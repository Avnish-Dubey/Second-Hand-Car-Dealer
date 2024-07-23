create schema  cars;
use cars;

-- Read Our Data --
select * from car_dekho;

-- Total Cars: To get a count of total records --

select count(*) from car_dekho;


-- The manager asked the employee How many cars is available in 2023?

select count(*) from car_dekho where year = 2023;


-- The manager asked the employee How many cars is available in 2020, 2021, 2022

select count(*) from car_dekho where year = 2020;  #74

select count(*) from car_dekho where year = 2021;  #7

select count(*) from car_dekho where year = 2022;  #7

select count(*) from car_dekho where year in (2020,2021,2022)  group by year;



-- Show the total of all cars by year.

select year, count(*) from car_dekho group by year;



-- How many diesel cars will there be in 2020?

select count(*) from car_dekho where year = 2020 and fuel = 'Diesel';   # 20


-- How many petrol cars will there be in 2020?

select count(*) from car_dekho where year = 2020 and fuel = 'Petrol';   # 51


--  All the fuel cars (petrol, diesel, and CNG) come by all year.

select year, count(*) from car_dekho where fuel = "Petrol" group by year;

select year, count(*) from car_dekho where fuel = "Diesel" group by year;

select year, count(*) from car_dekho where fuel = "CNG" group by year;

select year, count(*) from car_dekho where fuel = "LPG" group by year;



-- which year had more than 100 cars? 

select year from car_dekho where (select count(*) from car_dekho) >= 100;
select year , count(*)  from car_dekho 
group by year
having count(*) > 100 ;

--  All cars count details between 2015 and 2023; we need a complete list. 

-- Total
select count(*) from car_dekho where  year between 2015 and 2023;

-- By Every Year List
select year, count(*) from car_dekho where year between 2015 and  2023 group by year;



--  All cars details between 2015 to 2023 we need complete list.  

select * from car_dekho where year between 2015 and 2023;
