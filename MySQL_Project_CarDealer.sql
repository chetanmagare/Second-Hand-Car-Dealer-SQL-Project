CREATE DATABASE cars;
USE cars;
-- READ DATA--
SELECT * FROM cardekho;
-- Total Cars : To get a count of total records --
SELECT count(*) FROM cardekho;

-- The manager asked the employee How many cars will be available in 2023 ? --
SELECT count(*) FROM cardekho WHERE year = 2023 ;

-- The manager asked the employee How many cars is available in 2020 , 2021 , 2022 --
SELECT year , count(*) FROM cardekho WHERE year IN (2020 , 2021 , 2022 ) GROUP BY year; 

-- Client asked me to print the total of all cars by year. I don't want to see all the details --
SELECT year , count(*) FROM cardekho GROUP BY year;

-- Client asked to car dealer agent how many diesel cars will be there in 2020? --
Select count(*) FROM cardekho WHERE year = 2020 and fuel = 'Diesel';

-- Client asked to car dealer agent how many petrol cars will be there in 2020? --
Select count(*) FROM cardekho WHERE year = 2020 and fuel = 'Petrol';

-- The manager told the employee to give a print all the cars (petrol ,diesel and CNG ) come by all year --
Select count(*) FROM cardekho WHERE fuel = 'Petrol' GROUP BY year;
Select count(*) FROM cardekho WHERE fuel = 'Diesel' GROUP BY year;
Select count(*) FROM cardekho WHERE fuel = 'CNG' GROUP BY year;

-- Manager said there were more than 100 cars in a given year , which year had more than 100 cars? --
SELECT year , count(*) FROM cardekho GROUP BY year HAVING count(*) > 100;

-- The manager said to the employee all cars count details between 2015 and 2023; we need a complete list --
SELECT count(*) FROM cardekho WHERE year BETWEEN 2015 AND 2023;

-- The manager said to the employee all cars details between 2015 to 2023 we need complete list --
SELECT * FROM cardekho WHERE year BETWEEN 2015 AND 2023;

-- END --