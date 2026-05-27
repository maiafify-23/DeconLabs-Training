# Project 2: Exploratory Data Analysis (EDA) - DecodeLabs

## 1. Problem Statement
The primary objective of this analysis is to conduct an Exploratory Data Analysis (EDA) on the transaction data to understand purchasing behavior, identify the highest revenue-generating products, and investigate data integrity.

## 2. Data Shape & Integrity
* **Completeness:** The dataset is 100% complete with no missing values (Zero Missing Data).
* **Data Distribution:** The distribution of `TotalPrice` is heavily **Right-Skewed** (Symmetrical shape is absent). 
* **Central Tendency:** Due to the skewness, the **Median ($823.62)** is utilized as the true center of gravity for the data rather than the Mean ($1053.97), exactly as recommended in the training kit.

## 3. Outliers & Data Forensics
Using the Interquartile Range (IQR) method:
* **Outlier Threshold:** Any transaction exceeding **$3,330.40** is classified as an outlier.
* **Total Outliers Detected:** 8 transactions.
* **Forensic Investigation:** Upon deeper analysis, these outliers are identified as **Signals, not Noise** (Not data entry errors). They represent real, high-value bulk purchases by VIP clients buying premium items like Laptops and Printers.

## 4. Key Findings & Business Impact
* **Top Performers:** **Chairs** and **Printers** are the primary revenue drivers, with total sales exceeding **$195,000** each.
* **Underperformers:** **Phones** generated the lowest revenue, accounting for approximately **$151,000**.
* **Business Recommendation:** Marketing efforts should double down on bundle offers for Chairs and Printers, while investigating why Phone sales are lagging.