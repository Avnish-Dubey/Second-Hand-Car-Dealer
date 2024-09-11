# Second Hand Car Dealer SQL Project

## Overview

This project focuses on analyzing and querying data from a second-hand car dealership using MySQL. The goal was to extract meaningful insights and generate reports based on various criteria related to car inventory and sales. The SQL queries provided cover a range of analytical tasks, including total record counts, year-based car availability, and fuel type distribution.

## Project Objectives

1. **Data Reading and Preparation**: Loaded the cars dataset into MySQL for analysis.
2. **Total Car Count**: Determined the total number of records in the dataset.
3. **Annual Car Availability**: Analyzed the number of cars available for specific years (2020, 2021, 2022, and 2023).
4. **Yearly Car Totals**: Generated a report of the total number of cars by year.
5. **Fuel Type Analysis**: Queried the number of diesel and petrol cars available in 2020.
6. **All Fuel Types by Year**: Listed all cars by fuel type (petrol, diesel, CNG) for each year.
7. **Yearly Car Count Analysis**: Identified years with more than 100 cars available.
8. **Complete List of Cars (2015-2023)**: Provided a comprehensive list of all cars between the years 2015 and 2023.

## SQL Queries and Solutions

The following SQL queries were used to answer the questions posed:

1. **Total Cars**:
   ```sql
   SELECT COUNT(*) AS total_cars FROM cars;
   ```

2. **Cars Available in 2023**:
   ```sql
   SELECT COUNT(*) AS cars_2023 FROM cars WHERE year = 2023;
   ```

3. **Cars Available by Year (2020, 2021, 2022)**:
   ```sql
   SELECT year, COUNT(*) AS cars_count
   FROM cars
   WHERE year IN (2020, 2021, 2022)
   GROUP BY year;
   ```

4. **Total of All Cars by Year**:
   ```sql
   SELECT year, COUNT(*) AS total_cars
   FROM cars
   GROUP BY year;
   ```

5. **Diesel Cars in 2020**:
   ```sql
   SELECT COUNT(*) AS diesel_cars_2020
   FROM cars
   WHERE year = 2020 AND fuel_type = 'Diesel';
   ```

6. **Petrol Cars in 2020**:
   ```sql
   SELECT COUNT(*) AS petrol_cars_2020
   FROM cars
   WHERE year = 2020 AND fuel_type = 'Petrol';
   ```

7. **All Fuel Types by Year**:
   ```sql
   SELECT year, fuel_type, COUNT(*) AS count
   FROM cars
   GROUP BY year, fuel_type;
   ```

8. **Years with More than 100 Cars**:
   ```sql
   SELECT year, COUNT(*) AS cars_count
   FROM cars
   GROUP BY year
   HAVING COUNT(*) > 100;
   ```

9. **Complete List of Cars (2015-2023)**:
   ```sql
   SELECT *
   FROM cars
   WHERE year BETWEEN 2015 AND 2023;
   ```

### Getting Started

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/yourusername/second-hand-car-dealer-sql.git
   ```

2. **Navigate to the Project Directory**:
   ```bash
   cd second-hand-car-dealer-sql
   ```

3. **Set Up MySQL**:
   Ensure you have MySQL installed and set up. Import the dataset into your MySQL database to run the queries.

4. **Run the Queries**:
   Use MySQL Workbench or any SQL client to execute the provided queries and analyze the results.

### Results

The project provides insights into car availability over the years, fuel type distribution, and yearly car counts. The results are intended to assist in understanding inventory trends and making informed business decisions.
