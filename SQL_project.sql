
select * from new_schema.swiggy;

# Q1.
select count(distinct Restaurant)
as Restaurant
from new_schema.swiggy
where ratings>4.5;

#Q2. 
Select City,count(distinct Restaurant)
as Restaurant from new_schema.swiggy
group by City
order by Restaurant desc
limit 1;

#Q3.
select count(distinct Restaurant)
as Pizza_Restaurant 
from new_schema.swiggy
where Restaurant like '%Pizza%';

#Q4.
select City, avg(Ratings) as average_rating
from new_schema.swiggy
group by City;


#Q5.
select distinct t1.Restaurant,t1.City,t2.City
from new_schema.swiggy t1 join new_schema.swiggy t2
on t1.Restaurant=t2.Restaurant and
t1.City<>t2.City;

#Q6.
select distinct Restaurant,avg(Price) as average_price
from new_schema.swiggy group by Restaurant
order by average_price limit 1;














