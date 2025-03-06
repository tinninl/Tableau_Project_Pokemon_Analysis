-- This query counts single type Pokemon grouped by type
SELECT type1 AS 'Type 1', count(*) AS 'Count' FROM pokedex
WHERE type2 = ''
GROUP BY type1
ORDER BY 2 ASC;

-- This query counts dual-type Pokemon grouped by type combinations
SELECT type1 AS 'Type 1', type2 as 'Type 2', count(*) AS 'Count' FROM pokedex
WHERE type2 != ''
GROUP BY type1, type2
ORDER BY 1, 2;

-- Display the entire pokedex excluding generation
SELECT `number`, `name`, type1, type2, hp, attack, defense, `sp.attack`, `sp.defense`, speed FROM pokedex;






