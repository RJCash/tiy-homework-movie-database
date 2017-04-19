-- list people that match person id between tables
SELECT * FROM person,movie_person  WHERE
person_id = personid;
--insert new person
INSERT Into person(firstname, lastname)
VALUES ('Matthew','McConaughey');
--delete a person based on  first name
DELETE FROM person Where firstname='Matthew';
--Insert new rating into reviews
Insert INTO reviews(movierating)
VALUES ('5');
--show all movie ratings
Select movierating From reviews;
--Select movie name with the genre
SELECT moviename, moviegenre FROM movie,movie_genre WHERE
movie_genre_id = movie_id;
--Select person with the associated movie
SELECT firstname,lastname,moviename FROM person,
movie,movie_person Where person_id =personid  and movieid=movie_id;
--Select a record that have mathching values in the
--joined tables
SELECT firstname,lastname,type FROM person
INNER JOIN genre ON person.person_id=genre.genre_id;
--update review in review table
UPDATE reviews SET movierating ='4'
WHERE reviews_id =3
-- PostgreSQL database dump complete
--

