# Retail Sales SQL Data Analysis Project

## 📌 Project Overview

This project analyzes retail sales data using MySQL.

The main objective of this project is to practice SQL data analysis techniques by exploring sales transactions, customers, product categories, sales performance, and customer purchasing behavior.

The project covers the complete SQL workflow starting from database and table creation, followed by data cleaning, data exploration, and data analysis.

---

## 🛠️ Tools & Technologies

- MySQL
- MySQL Workbench
- SQL
- Excel / CSV
- Visual Studio Code
- Git & GitHub

---

## 📂 Dataset

The dataset contains retail sales transaction information.

The main columns in the dataset are:

| Column | Description |
|---|---|
| transactions_id | Unique transaction ID |
| sale_date | Date of the sale |
| sale_time | Time of the sale |
| customer_id | Customer ID |
| gender | Customer gender |
| age | Customer age |
| category | Product category |
| quantiy | Quantity sold |
| price_per_unit | Price per unit |
| cogs | Cost of goods sold |
| total_sale | Total sales amount |

---

## 🗄️ Database Structure

Database name:

`sql_project_p1`

Table name:

`retail_sales`

The table was created using MySQL.

---

## 🧹 Data Cleaning

Before performing the analysis, the dataset was checked for NULL values across all important columns.

The following columns were checked:

- transactions_id
- sale_date
- sale_time
- customer_id
- gender
- age
- category
- quantiy
- price_per_unit
- cogs
- total_sale

---

## 🔍 Data Exploration

The following basic exploratory analysis was performed:

1. Total number of transactions
2. Total number of unique customers
3. Total number of unique product categories
4. List of distinct product categories

---

## 📊 Data Analysis

The following SQL questions were solved using MySQL.

### Q1. Sales on a Specific Date

Retrieve all columns for sales made on `2022-11-05`.

### Q2. Clothing Sales in November 2022

Retrieve all Clothing transactions where the quantity sold is greater than 4 during November 2022.

### Q3. Total Sales by Category

Calculate the total sales for each product category.

### Q4. Average Customer Age – Beauty Category

Find the average age of customers who purchased products from the Beauty category.

### Q5. Transactions Above 1000

Find all transactions where the total sale amount is greater than 1000.

### Q6. Transactions by Gender and Category

Calculate the total number of transactions made by each gender in each category.

### Q7. Best-Selling Month in Each Year

Calculate the average sale for each month and identify the month with the highest average sales in each year using the `RANK()` window function.

### Q8. Top 5 Customers

Find the top 5 customers based on their total sales.

### Q9. Unique Customers by Category

Find the number of unique customers who purchased products from each category.

### Q10. Sales by Shift

Divide transactions into three shifts based on sale time:

- Morning: ≤ 12
- Afternoon: > 12 and ≤ 17
- Evening: > 17

Then calculate the number of orders in each shift.

---

## 💡 SQL Concepts Practiced

This project helped me practice the following SQL concepts:

- CREATE DATABASE
- CREATE TABLE
- SELECT
- WHERE
- GROUP BY
- ORDER BY
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()
- DISTINCT
- MONTH()
- YEAR()
- EXTRACT()
- HOUR()
- CASE
- RANK()
- Window Functions
- Subqueries
- CTEs
- Aggregate Functions
- NULL value checking

---

## 📈 Key Analysis Areas

The project focuses on understanding:

- Sales performance
- Customer purchasing behavior
- Product category performance
- Monthly sales trends
- Customer contribution to total sales
- Gender-wise purchasing behavior
- Sales distribution by time of day

---

## 📁 Project Structure


Retail-Sales-SQL-Project/
│
├── README.md
├── retail_sales.sql
└── retail_sales.csv