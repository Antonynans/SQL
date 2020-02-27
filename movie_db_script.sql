-- Write a query in SQL to find the name and year of the movies.
-- • Write a query in SQL to find the year when the movie American Beauty released.
-- • Write a query in SQL to find the movie which was released in the year 1999
-- • Write a query in SQL to find the movies which was released before 1998
-- • Write a query in SQL to find the movie which was released in the year 1999
-- • Write a query in SQL to return the name of all reviewers and name of movies together in a single list
-- • Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
-- • Write a query in SQL to find the titles of all movies that have no ratings.
-- • Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value
-- • Write a query in SQL to find the name of movie and director (first and last names) who directed a  movie that casted a role for 'Eyes Wide Shut'.


select movieTitle, movieYear from movie;
select movieYear from movie where movieTitle = 'American Beauty';
select movieTitle from movie where movieYear = 1999;
select movieTitle from movie where movieYear < 1998;
select reviewer.reviewerName from reviewer union (select movie.movieTitle from movie);  
select ReviewerName from reviewer inner join rating where reviewerStars > 7;
select movieTitle from movie where movieId not in (select movieId from rating);
select ReviewerName from reviewer union (select Num_O_rating from rating where Num_O_rating is null);
select movieTitle, directorFirstName, directorLastName from director
inner join movieDirection
inner join movie 
inner join movieCast
where role is not null and movieTitle = 'Eyes Wide Shut';