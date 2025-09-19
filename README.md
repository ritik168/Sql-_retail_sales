## Project Overview 

#### Project Title: Retail sales Analysis
#### Level: Begineer 
#### Database: p1_retail_db

##### This project is designed to demonstrate SQL skills and technique typically used by data analysts to explore, clean and analyze retail sales data. The project involves setting up a retail sales database, performing exploratory data analysis (EDA), and answering specific business question through SQL queries. This project is ideal fro those who as staring their journey in data analysis and want to build a solid foundation in SQL.

## Objectives
#### 1. set up retail sales database : create and populate a retails sales database with the provided sales data.
#### 2. Data cleaning: Identify and remove any records with missing or null values.
#### 3. Exploratory Data Analysis (EDA): Perform basic exploratory data analysis to perform basic exploratory data analysis to understand the dataset.
#### 4. Business Analysis: Use SQL to answer specific business question and derive insightfrom the sales data.


## Project structure

### 1. Database Setup
- **Database Creations: The project start by creating a database name p1_retail_db
- **Table Creation: A table named retail_sales is created to store the data. The table structure     includes columns for transaction_id , sale date,sale time,customer id,gender,age ,product        category,quantity sold,unit price ,cost of goods ,and total sales amount.

```Sql

create DATABASE p1_retail_db;

create table retail_sales
(
  transactions_id	int primary key,
	sale_date date,
	sale_time time,
	customer_id	int,
	age	int,
	category varchar(50)	
	quantiy	int,
	price_per_unit	float,
	cogs float,
	total_sale float
);
```

### 2. Data Exploration & cleaning

- **Record Count**: Determine the total number of records in the dataset.
- **Customer count**: Find out how many unique customers are in the Dataset.
- **Category Count**:Identifying all unique product categories inthe dataset.
- **Null value checks**: check for any null values in the dataset and delete records with            missing data.

``` sql
select * from retail_sales

select * from retail_sales
where transactions_id is null;
select * from retail_sales
where sale_date is 
select * from retail_sales
where transactions_id is null
or
sale_date is null 
or 
sale_time is null
or
gender is null
or 
category is null
or 
quantiy is null
or 
cogs is null
or
total_sale is null;
Delete from retail_sales
where transactions_id is null
or
sale_date is null 
or 
sale_time is null
or
gender is null
or 
category is null
or 
quantiy is null
or 
cogs is null
or
total_sale is null;
select count(*) from retail_sales
```





















