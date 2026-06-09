-- Netflix Content Analysis Project
-- Author: Anmol Wasnik

 -- Query 1
 USE netflix_analysis;
 
 -- Query 2
 SELECT COUNT(*) AS total_titles
FROM netflix_titles;

-- Query 3
SELECT type,
       COUNT(*) AS total_content
FROM netflix_titles
GROUP BY type;

-- Query 4
SELECT rating,
       COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY rating
ORDER BY total_titles DESC;

-- Query 5
SELECT country,
       COUNT(*) AS total_titles
FROM netflix_titles
WHERE country IS NOT NULL
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

-- Query 6
SELECT primary_genre,
       COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY primary_genre
ORDER BY total_titles DESC
LIMIT 10;

-- Query 7
SELECT year_added,
       COUNT(*) AS content_added
FROM netflix_titles
GROUP BY year_added
ORDER BY year_added;

-- Query 8
SELECT month_added,
       COUNT(*) AS content_added
FROM netflix_titles
GROUP BY month_added
ORDER BY content_added DESC;

-- Query 9
SELECT director,
       COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

-- Query 10
SELECT release_year,
       COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY total_titles DESC
LIMIT 10;

-- Query 11
SELECT COUNT(*) AS long_movies
FROM netflix_titles
WHERE type='Movie'
AND duration_value > 120;

-- Query 12
SELECT ROUND(AVG(duration_value),2) AS avg_movie_duration
FROM netflix_titles
WHERE duration_type='Minutes';

-- Query 13
SELECT country,
       type,
       COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY country,type
ORDER BY total_titles DESC;

-- Query 14
SELECT year_added,
       COUNT(*) AS titles_added
FROM netflix_titles
GROUP BY year_added
ORDER BY year_added;

-- Query 15
SELECT rating,
       COUNT(*) AS total_movies
FROM netflix_titles
WHERE type='Movie'
GROUP BY rating
ORDER BY total_movies DESC;

-- Query 16
SELECT rating,
       COUNT(*) AS total_tvshows
FROM netflix_titles
WHERE type='TV Show'
GROUP BY rating
ORDER BY total_tvshows DESC;

-- Query 17
SELECT country,
       COUNT(*) AS total_movies
FROM netflix_titles
WHERE type='Movie'
GROUP BY country
ORDER BY total_movies DESC
LIMIT 10;

-- Query 18
SELECT country,
       COUNT(*) AS total_tvshows
FROM netflix_titles
WHERE type='TV Show'
GROUP BY country
ORDER BY total_tvshows DESC
LIMIT 10;

-- Query 19
SELECT COUNT(*) AS content_after_2015
FROM netflix_titles
WHERE release_year > 2015;

-- Query 20
SELECT title,
       release_year
FROM netflix_titles
ORDER BY release_year DESC
LIMIT 10;















