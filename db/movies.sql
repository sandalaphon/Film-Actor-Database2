DROP TABLE films_actors;
DROP TABLE actors;
DROP TABLE films;

CREATE TABLE actors (
id SERIAL4 PRIMARY KEY,
name VARCHAR(255),
gender VARCHAR(255),
age INT4
);

CREATE TABLE films (
id SERIAL4 PRIMARY KEY,
title VARCHAR(255),
year INT4,
genre VARCHAR(255)
);

CREATE TABLE films_actors (
id SERIAL4 PRIMARY KEY,
actor_id INT4 REFERENCES actors(id) ON DELETE CASCADE,
film_id INT4 REFERENCES films(id) ON DELETE CASCADE
);


