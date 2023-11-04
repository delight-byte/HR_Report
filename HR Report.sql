create table hr(id int, first_name varchar (29), last_name varchar(29), birthdate date,
    -> gender varchar(19), race varchar(13), department varchar(17), jobtitle varchar(13),
    -> location varchar(13), location_city varchar(19), location_state varchar(29));

Load data in file 'F:\HR_Report.CSV'
    ->Into table HR
    ->Fields terminated by ','
    ->Lines terminated by '\n'
    ->Ignore 1 lines;

select min(age) as youngest,
    -> max(age) as oldest from hr;

select count(*) from hr where age<22;


select gender, count(*) as count
    -> from hr
    -> where age>=22
    -> group by gender;

select race, count(*) as count
    -> from hr
    -> group by race order by count(*) desc;

select
    -> case
    -> when age >= 21 and age <= 24 then '21-24'
    -> when age >= 25 and age <= 29 then '25-29'
    -> when age >= 30 and age <= 35 then '30-35'
    -> when age >= 36 and age <= 41 then '36-41'
    -> when age >= 42 and age <= 55 then '42-55'
    -> else '60+' end as age_group,
    -> count(*) as count from hr
    -> where age >= 21
    -> group by age_group
    -> order by age_group;

select
    -> case
    -> when age >= 21 and age <= 24 then '21-24'
    -> when age >= 25 and age <= 29 then '25-29'
    -> when age >= 30 and age <= 35 then '30-35'
    -> when age >= 36 and age <= 41 then '36-41'
    -> when age >= 42 and age <= 55 then '42-55'
    -> else '60+' end as age_group, gender,
    -> count(*) as count from hr
    -> where age >= 21
    -> group by age_group, gender
    -> order by age_group, gender;

select location, count(*) as count
    -> from hr group by location;

select department, gender, count(*) as count
    -> from hr
    -> group by department, gender
    -> order by department;

select jobtitle, count(*) as count from hr
    -> group by jobtitle order by jobtitle;

 select location_city, count(*) as count
    -> from hr group by location_city;



