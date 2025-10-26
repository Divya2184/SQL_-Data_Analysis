create database sql_queries;

use sql_queries;

select * from employee;

desc employee;

-- 1. Use select , where, order by, group by

-- 1. filter employees by city

select * from employee where city='Bangalore';

-- 2. filters employees exp and education

select * from employee where education='bachelors' and experienceincurrentdomain>=2;

-- 3. order employees by age

select city,gender,age from employee order by age desc;

-- 4.count employees by city

select city,count(*) as total_emp from employee group by city order by total_emp desc;

-- 5. employees who have been benched

select * from employee where everbenched='yes';

-- 6. subquery - emp with above avg exp

select * from employee where experienceincurrentdomain>(select avg(experienceincurrentdomain) from employee);

-- 7. optimize query

create index idx_city on employee(city);



