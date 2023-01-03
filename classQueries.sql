SELECT * FROM 
(film JOIN film_actor
on film.film_id = film_actor.film_id)
join actor 
on actor.actor_id=film_actor.actor_id;


SELECT film.title, count(*) FROM 
(film JOIN film_actor
on film.film_id = film_actor.film_id)
join actor 
on actor.actor_id=film_actor.actor_id
group by film.title
order by count(*);


SELECT a.first_name, a.last_name, count(*) as "movies count" FROM 
(film as f JOIN film_actor as fa
on f.film_id = fa.film_id)
join actor as a
on a.actor_id=fa.actor_id
group by a.first_name, a.last_name
order by count(*);
