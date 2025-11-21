SELECT * FROM regions;
SELECT * FROM species;
SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * from Observations
LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT region_id from observations;

-- MISSION 3
-- Your query here;
SELECT COUNT(distinct species_id) as Especies_distintas from observations;

-- MISSION 4
-- Your query here;
SELECT * from Observations
WHERE region_id = 2;

-- MISSION 5
-- Your query here;
SELECT * from Observations
WHERE observation_date = "1998-08-08";

-- MISSION 6
-- Your query here;
SELECT region_id, count(*) as Obsevaciones_realizadas
FROM Observations
GROUP BY region_id
ORDER BY Obsevaciones_realizadas DESC;

-- MISSION 7
-- Your query here;
SELECT species_id, count(*) as Frecuencia
FROM Observations
GROUP BY species_id
ORDER BY Frecuencia DESC
LIMIT 5;

-- MISSION 8
-- Your query here;
SELECT species_id, count(*) as Cuenta
FROM Observations
GROUP BY species_id
HAVING Cuenta < 5
ORDER BY Cuenta ASC;

-- MISSION 9
-- Your query here;
SELECT observer, count(*) as Cantidad_obsevaciones
FROM Observations
GROUP BY observer
ORDER BY Cantidad_obsevaciones DESC;

-- MISSION 10
-- Your query here;
SELECT Observations.id, regions.name as region_name
FROM Observations
JOIN regions on Observations.region_id = regions.id;

-- MISSION 11
-- Your query here;

SELECT observations.id, species.scientific_name as Nombre_cientifico
FROM Observations
JOIN species on Observations.species_id = species.id;

-- MISSION 12
-- Your query here;

SELECT species.scientific_name as Specie, regions.name as Region, count(*) as Total
FROM observations
JOIN regions on Observations.region_id = regions.id
JOIN species on Observations.species_id = species.id
GROUP BY Region, Specie
ORDER BY region, total DESC;

-- MISSION 13
-- Your query here;
INSERT INTO regions (id, name, country) 
VALUES (61, 'Caracas', 'Venezuela');

SELECT * FROM regions;

-- MISSION 14
-- Your query here;
SELECT * FROM species;

UPDATE species
SET scientific_name = "CacatuaS galerita"
WHERE scientific_name = "Cacatua galerita"

-- MISSION 15
-- Your query here;
DELETE FROM regions
WHERE id = 61