-- Question 1:
select customer.first_name, customer.last_name, address.district
from address
inner JOIN customer on customer.address_id=address.address_id
where district = 'Texas';

-- Question 2:
select customer.first_name, customer.last_name, payment.amount
from customer, payment
where amount > 6.99

-- Question 3:
select customer_id
from payment
group by customer_id
having sum(amount) > 175
order by sum(amount) desc;


select *
from customer 
where customer_id in(
	select customer_id
	from payment
	group by customer_id
	having sum(amount) > 175
	order by sum(amount) desc
);

-- Question 4: 
select customer.first_name, customer.last_name, city.city
from city
inner join customer on city.last_update=customer.last_update
where city = 'Nepal'

-- Question 5:
select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc;
 
select first_name, last_name
from customer
where customer_id = 148

-- Question 6:
select sum(film_id)
from film_actor
group by film_id
order by sum(film_id) desc;

select film_id, title
from film
where film_id = 1;

-- Question 7:
 select distinct customer_id, amount
 from payment
where amount = 6.99
order by customer_id desc;


select *
from customer, payment
where customer.customer_id in(
select distinct customer_id
 from payment
where amount = 6.99
order by customer_id desc);

-- Question 8:
select film_id, sum(category_id)
from film_category
group by film_id, film_category.category_id
order by category_id desc;