#Get release years.

SELECT RELEASE_YEAR FROM FILM;

#Get all films with ARMAGEDDON in the title.

SELECT * from FILM
where title in ('ARMAGEDDON');


#Get all films which title ends with APOLLO.

SELECT * FROM film WHERE title LIKE 'ARMAGEDDON';

#Get 10 the longest films.

SELECT * FROM film ORDER BY length DESC LIMIT 10;


#How many films include Behind the Scenes content?

SELECT count(*) FROM film WHERE special_features LIKE 'Behind the Scenes';

#Drop column picture from staff.

ALTER TABLE SAKILA.STAFF
DROP column ('picture')
FROM Staff;


#A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

INSERT INTO staff (staff_id, first_name, last_name, address_id, email, store_id,active, username, password)
VALUES
(3,'Tammy','Sanders',79,'TAMMY.SANDERS@sakilastaff.com',2,1,'Tammy','');
select * from sakila.staff;

#Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:
select customer_id from sakila.customer
where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

select * from rental; 

select film_id,title from sakila.film
where title like 'Academy Dinosaur';alter

#Use similar method to get inventory_id, film_id, and staff_id.


#Delete non-active users, but first, create a backup table deleted_users to store customer_id, email, and the date for the users that would be deleted. Follow these steps:

#Check if there are any non-active users


SELECT * from CUSTOMER_LIST
where ACTIVE = 1;






#Create a table backup table as suggested


#Insert the non active users in the table backup table



#Delete the non active users from the table customer