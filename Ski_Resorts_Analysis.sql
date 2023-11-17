/* 1. Which countries have the most ski resorts? */
SELECT 
    Country, COUNT(*) AS No_of_resorts
FROM
    resorts
GROUP BY country
ORDER BY No_of_resorts DESC
LIMIT 10;


/* 2. How do ski seasons vary by location? Does the snow cover reflect this?*/
SELECT 
    Resort, Country, Season
FROM
    resorts
ORDER BY Season;

/* 3. Which resorts have the highest mountain peaks and elevation changes?*/
SELECT 
    resort, `Highest point`, `Total slopes`
FROM
    resorts
ORDER BY `Highest point` DESC , `Total slopes` DESC;

/* 4. What are the best resortd for beginners? What about experts?*/
SELECT 
    resort, `Beginner slopes` AS slopes
FROM
    resorts
ORDER BY slopes DESC
LIMIT 10;

SELECT 
    Resort, `Difficult slopes` AS Slopes
FROM
    resorts
ORDER BY slopes DESC;

/* 5. Find the resorts with the most number of total lifts.*/
SELECT 
    resort, `total lifts`
FROM
    resorts
ORDER BY `Total lifts` DESC
LIMIT 10;

/* 6. Identify the resorts that offer nightskiing, summer skiing, and snowparks.*/

SELECT 
    Resort
FROM
    Resorts
WHERE
    nightskiing = 'yes'
        AND `summer skiing` = 'yes'
        AND snowparks = 'yes';

/* 7. Find the resorts that are most suitable for families, considering factors such as child-friendliness, snowparks and beginner slope length.. */

SELECT 
    Resort, `Beginner slopes`
FROM
    resorts
WHERE
    `Child friendly` = 'yes'
        AND Snowparks = 'yes'
        AND `Beginner slopes` > 0
ORDER BY `Beginner slopes` DESC;

/* 8. Which country has the most resorts with a lift capacity of over 100,000 people? */

SELECT 
    Country, COUNT(*) AS Num_of_Resorts
FROM
    resorts
WHERE
    `Lift capacity` > 100000
GROUP BY country
ORDER BY Num_of_Resorts DESC;