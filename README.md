# Bengaluru Ola Ride Analytics with MySQL

This repository contains SQL views and queries to analyze booking trends, driver/customer ratings, ride cancellations, and revenue metrics from Bengaluru Ola ride data.

---

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [How to Import `Bengaluru Ola.xlsx` into MySQL](#how-to-import-bengaluru-olaxlsx-into-mysql)
- [Database Setup & Running the Queries](#database-setup--running-the-queries)
- [SQL Analysis Breakdown](#sql-analysis-breakdown)

---

## 📖 Project Overview

The SQL scripts in this project run against an Ola bookings dataset to answer key business and operational questions:
- Successful booking rates and total revenue.
- Cancellation reasons (driver vs. customer).
- Performance ratings for drivers and vehicle types.
- Payment preference distribution (e.g., UPI).
- Driver/vehicle utilization and travel distances.

---

## ⚙️ Prerequisites

- **MySQL Server** (version 8.0 or higher recommended)
- **MySQL Workbench** (or any database GUI such as DBeaver, TablePlus, or the MySQL CLI)
- **Microsoft Excel** or an equivalent spreadsheet editor
- **`Bengaluru Ola.xlsx`** dataset file

---

## 📥 How to Import `Bengaluru Ola.xlsx` into MySQL

MySQL does not directly parse `.xlsx` files natively. The cleanest, standard method to import this data is converting it to `.csv` and using MySQL Workbench's **Table Data Import Wizard**.

### Step 1: Convert `.xlsx` to `.csv`
1. Open `Bengaluru Ola.xlsx` in Microsoft Excel (or Google Sheets / LibreOffice).
2. Go to **File > Save As**.
3. Choose the format **CSV (Comma delimited) (*.csv)**.
4. Save it as `Bengaluru_Ola.csv`.

---

### Step 2: Create the Database
Open MySQL Workbench (or CLI) and initialize the target database:

```sql
CREATE DATABASE IF NOT EXISTS ola;
USE ola;
