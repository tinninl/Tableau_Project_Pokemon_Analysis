-- Get the number of pokemon in each generation (1 through 9)
SELECT gen, COUNT(*) as count_pokemon FROM pokedex
GROUP BY gen
ORDER by gen;

-- Display the average stats of pokemon across each generation, rounded to two decimal places
SELECT 
	gen, 
	ROUND(AVG(attack), 2), 
	ROUND(AVG(defense), 2), 
    ROUND(AVG(hp), 2),
    ROUND(AVG(`sp.attack`), 2), 
    ROUND(AVG(`sp.defense`), 2), 
    ROUND(AVG(speed), 2) 
FROM pokedex
GROUP BY gen 
ORDER BY gen;

-- Display the distribution of pokemon types in each generation
SELECT gen, type1, COUNT(*) as type_count FROM pokedex
GROUP BY 1, 2
ORDER BY 1, 2;