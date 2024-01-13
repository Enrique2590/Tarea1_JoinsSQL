--Elmer Rivas
-- Query ejercicio 1
select title, replacement_cost, rental_rate
from film
where replacement_cost < 4*rental_rate
order by rental_rate

-- Query ejercicio 2
select title, release_year, rental_rate, replacement_cost, length, rating, name
from film f
join film_category fc on f.film_id = fc.film_id
join category cat on fc.category_id = cat.category_id
where (release_year = 2006) and (rental_rate between 0.99 and 2.99) and (replacement_cost < 19.99) and (length between 90 and 150) and (RATING = 'G' OR RATING = 'PG' OR RATING = 'PG-13') AND (name = 'Comedy' or name = 'Family' or name = 'Children')

-- Query ejercicio 3
select to_char(rental_date,'DD/MM/YYYY'),to_char(rental_date,'hh24:mi:ss'), title, c.first_name || ' ' || c.last_name as customer_full_name, c.email, phone, address ||', '|| address2 ||', '|| district ||', '|| postal_code ||', '|| city ||', '|| country as full_address
from film f
join inventory inv on f.film_id = inv.film_id
join rental rent on inv.inventory_id = rent.inventory_id
join customer c on rent.customer_id = c.customer_id
join address ad on c.address_id = ad.address_id
join city ci on ad.city_id = ci.city_id
join country co on ci.country_id = co.country_id
join staff st on rent.staff_id = st.staff_id
WHERE rental_date >= '2005 07 31' AND rental_date < '2005 08 01'
order by rental_date

-- Query ejercicio 4
select to_char(rental_date,'DD/MM/YYYY ') as date ,to_char(rental_date,'hh24:mi:ss') as hour, title, c.first_name || ' ' || c.last_name as customer_full_name, ad.phone, country, st.first_name || ' ' || st.last_name as staff_full_name, ad.phone, country
from film f
join inventory inv on f.film_id = inv.film_id
join rental rent on inv.inventory_id = rent.inventory_id
join customer c on rent.customer_id = c.customer_id
join address ad on c.address_id = ad.address_id
join city ci on ad.city_id = ci.city_id
join country co on ci.country_id = co.country_id
join staff st on rent.staff_id = st.staff_id
--join address a_staff on st.address_id = a_staff.address_id
--join city ci_staff on a_staff.city_id = ci_staff.city_id
--join country co_st on ci_staff.country_id = co_st.country_id
WHERE rental_date >= '2005 07 31' AND rental_date < '2005 08 01'
order by rental_date

-- Query ejercicio 5
select to_char(rental_date,'DD/MM/YYYY ') as date ,to_char(rental_date,'hh24:mi:ss') as hour, title, rental_rate, amount--c.first_name || ' ' || c.last_name as customer_full_name, ad.phone, country, st.first_name || ' ' || st.last_name as staff_full_name, ad.phone, country
--select *
from film f
join inventory inv on f.film_id = inv.film_id
join rental rent on inv.inventory_id = rent.inventory_id
join payment pay on rent.rental_id = pay.rental_id
WHERE (rental_date >= '2005 08 01' AND rental_date < '2005 09 01') and (amount <> rental_rate)
order by rental_date
