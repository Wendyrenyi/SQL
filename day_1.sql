#20180227
SELECT 
  A.PolicyNumber,
  A.ID,
  DISTINCT B.Name
From table1 A
  LEFT JOIN table2 B
    ON A.ID = B.ID
WHERE 
  (A.PolicyNumber BETWEEN 2 AND 7) AND (B.Name
  
LIMIT 10;

#OR and AND clauses
#if you would like to find all the employees in department 10, 
#along with any employees who earn a commission, 
#along with any employees in department 20 who earn at most $2000:

SELECT *
FROM table
WHERE 
  department = 10
  OR commission IS NOT NULL
  OR department = 20 AND earn <= 2000;
