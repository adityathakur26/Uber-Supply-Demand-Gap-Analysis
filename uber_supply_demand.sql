
-- UBER SUPPLY–DEMAND GAP ANALYSIS SQL FILE

-- 1. Create Database
CREATE DATABASE uber_supply_demand;
USE uber_supply_demand;

-- 2. Create Table
CREATE TABLE uber_requests (
    request_id INT,
    pickup_point VARCHAR(20),
    driver_id INT,
    status VARCHAR(30),
    request_timestamp DATETIME,
    drop_timestamp DATETIME,
    request_date DATE,
    request_hour INT,
    trip_duration_mins INT
);

-- 3. Data Validation
SELECT COUNT(*) AS total_requests FROM uber_requests;

SELECT status, COUNT(*) AS status_count
FROM uber_requests
GROUP BY status;

-- 4. Supply–Demand Gap Analysis
SELECT 
    COUNT(*) AS supply_gap_requests
FROM uber_requests
WHERE status IN ('Cancelled', 'No Cars Available');

SELECT 
    ROUND(
        SUM(CASE 
            WHEN status IN ('Cancelled', 'No Cars Available') THEN 1 
            ELSE 0 
        END) / COUNT(*) * 100, 2
    ) AS supply_gap_percentage
FROM uber_requests;

-- 5. Time-Based Analysis
SELECT request_hour, COUNT(*) AS total_requests
FROM uber_requests
GROUP BY request_hour
ORDER BY request_hour;

SELECT request_hour, status, COUNT(*) AS count
FROM uber_requests
GROUP BY request_hour, status
ORDER BY request_hour;

-- 6. Location-Based Analysis
SELECT pickup_point, status, COUNT(*) AS count
FROM uber_requests
GROUP BY pickup_point, status;

SELECT pickup_point, COUNT(*) AS supply_gap_count
FROM uber_requests
WHERE status IN ('Cancelled', 'No Cars Available')
GROUP BY pickup_point;

-- 7. Day-Level Analysis
SELECT request_date, COUNT(*) AS total_requests
FROM uber_requests
GROUP BY request_date
ORDER BY request_date;

-- 8. Driver-Level Analysis
SELECT COUNT(DISTINCT driver_id) AS active_drivers
FROM uber_requests
WHERE status = 'Completed';

SELECT driver_id, COUNT(*) AS cancellations
FROM uber_requests
WHERE status = 'Cancelled'
GROUP BY driver_id
ORDER BY cancellations DESC
LIMIT 10;

-- 9. Trip Duration Analysis
SELECT pickup_point, ROUND(AVG(trip_duration_mins), 2) AS avg_trip_duration
FROM uber_requests
WHERE status = 'Completed'
GROUP BY pickup_point;
