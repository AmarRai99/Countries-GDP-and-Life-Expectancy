DROP TABLE countries_GDP;
DROP TABLE life_expectancy;
DROP VIEW merged;


CREATE TABLE countries_GDP (
	id SERIAL PRIMARY KEY,
    country VARCHAR NOT NULL,
    population BIGINT NOT NULL,
    gdp  BIGINT NOT NULL,
    deathrate FLOAT NOT NULL 
);

SELECT * FROM countries_GDP;

CREATE TABLE life_expectancy (
	id SERIAL PRIMARY KEY,
    country VARCHAR NOT NULL,
    years FLOAT NOT NULL
);

Select * from countries_GDP;
Select * from life_expectancy;



CREATE VIEW merged AS
SELECT c.country, c.population, c.gdp, c.deathrate, l.years
FROM countries_GDP AS c
JOIN life_expectancy AS l
on c.country = l.country;

Select * from merged;
