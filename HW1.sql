-- Q1) How many actors are there with the last name 'Wahlberg'?
-- ANSWER: 2 actors Nick and Daryl
select * from actor;

select  first_name,last_name
from actor 
where last_name  = 'Wahlberg'

--Q2) How many payments were made between $3.99 and $5.99?
--ANSWER 5602.

select  count(amount)
from payment 
where amount between 3.99 and  5.99;

-- Q3) What film does the store have the most of?
--ANSWER: FILM ID 193, Crossroads Casualties

select film_id 
from inventory 
group by film_id 
order by count(film_id) desc;


--Q4)How many cusotmers have the last name 'William'
--ANSWER; ZERO CAME BACK (DOUBLE CHECK)

select first_name,last_name
from customers 
where last_name = 'William'




--Q5) What store employee (get the id) sold the most rentals ?
--ANSWER: Staff_id '1', Mike.


select staff_id
from rental 
group by staff_id 
order by count(staff_id) desc;





---Q6) How many different district names are there ?
-- answer: 378

select count(distinct district) from address 







---Q7)  What film has the most actors in it ?

--Film id 508, Lambs Cincinatti


select film_id
from film_actor
group by film_id 
order by count(film_id) desc;


--Q8 How many customers have the last name ending in 'es' ?

--SKIP for now

select count(last_name) from customers
where last_name like '%es'


-- Q9) How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers with ids between 380 and 430 ?

-- (use group by and having > 250)

---Nothing comes back, double check.
select amount, customer_id,rental_id 
from payment
where (customer_id between  380 and 430 )
group by amount,customer_id,rental_id 

having count(amount)>250
order by count(amount) desc;

--Q10) Within the film table, how many rating categories are there? And what rating has the most  movies total?

--ANSWER : there is a total of 5 different categories.

select count(distinct rating)
from film 

