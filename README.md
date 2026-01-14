# Uber Supply–Demand Gap Analysis

## 📌 Project Overview
The **Uber Supply–Demand Gap Analysis** project aims to identify and analyze the mismatch between rider demand and driver availability on the Uber platform. Using historical ride request data, the project uncovers **time-based and location-based supply gaps** that lead to ride cancellations and “No Cars Available” scenarios.

This project demonstrates an **end-to-end Data Analytics workflow** using **Python, SQL, and Excel Dashboarding**, along with a business-focused report.

## 🎯 Problem Statement
Uber frequently faces situations where ride requests are not fulfilled due to insufficient driver availability, especially during specific **time slots (early morning, evening)** and **pickup locations (airport)**. This leads to customer dissatisfaction and revenue loss.

## 🎯 Business Objective
- Identify **when** and **where** supply–demand gaps occur  
- Analyze patterns behind **cancellations and unfulfilled requests**  
- Provide **data-driven recommendations** to improve ride fulfillment, customer satisfaction, and operational efficiency  

## 🧾 Dataset Description
The dataset contains Uber ride request records with the following key columns:
- `request_id`
- `pickup_point` (City / Airport)
- `driver_id`
- `status` (Completed / Cancelled / No Cars Available)
- `request_timestamp`
- `drop_timestamp`
- `request_date`
- `request_hour`
- `trip_duration_mins`

## 🛠️ Tools & Technologies Used
- **Python** (Pandas, Matplotlib, Seaborn)
- **Jupyter Notebook** (EDA & Feature Engineering)
- **SQL (MySQL)** – Query-based analysis
- **Microsoft Excel** – Interactive Dashboard with Pivot Tables & Slicers
- **ReportLab** – PDF Report Generation

## 📊 Exploratory Data Analysis (EDA)
The EDA focuses on:
- Trip status distribution
- Hourly demand trends
- Supply–demand gap by time slot
- Pickup point (City vs Airport) analysis
- Day-wise and hour-wise demand patterns
- Correlation and multivariate insights

More than **15 meaningful charts** were created following **Univariate, Bivariate, and Multivariate (UBM)** analysis principles.

## 📈 Dashboard
An **interactive Excel dashboard** was created featuring:
- KPI cards (Total Requests, Cancellations, Supply Gap %)
- Hourly demand trends
- Supply gap by pickup point
- Status distribution
- Slicers for dynamic filtering (Pickup Point, Date, Status)

## 🧮 SQL Analysis
A complete SQL script is included to:
- Create database and tables
- Perform supply–demand gap calculations
- Analyze hourly, daily, and location-based trends
- Perform driver-level and trip-duration analysis

## 💡 Key Insights
- Early Morning and Evening hours show **maximum supply gaps**
- Airport pickups face **higher cancellations and no-car availability**
- Supply gaps follow **predictable time-based patterns**
- Peak-hour demand is not matched by proportional driver availability

## ✅ Business Recommendations
- Introduce **rush-hour pricing** during morning and evening peaks
- Provide **night-shift and airport-specific driver incentives**
- Use **predictive demand forecasting** for proactive driver allocation
- Implement **dynamic surge pricing and driver alerts**

## 🏁 Conclusion
The Uber supply–demand gap is **predictable and manageable**. By leveraging time-based and location-based analytics, Uber can significantly reduce cancellations, improve customer satisfaction, and optimize driver utilization through data-driven strategies.

## 🚀 Future Scope
- Real-time demand forecasting using ML models
- Live driver availability integration
- Automated surge pricing systems
- Cloud-based dashboard deployment

## 📂 Repository Structure
