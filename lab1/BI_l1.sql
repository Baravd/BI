SELECT c.ID, c.name FROM Countries c
	 INNER JOIN CountriesOrganizations co ON c.ID = co.ID_Country
	 INNER JOIN Organizations o ON co.ID_Organization = o.id WHERE o.name = 'NATO';	
SELECT  DISTINCT c.ID, c.name FROM Countries c
	INNER JOIN CountriesOrganizations co ON c.ID = co.ID_Country
	INNER JOIN Organizations o ON co.ID_Organization = o.id WHERE o.founded_date <	'1980-01-01';
SELECT  c.ID , c.name FROM Countries c
	INNER JOIN CountriesOrganizations co ON c.ID = co.ID_Country
	INNER JOIN Organizations o ON co.ID_Organization = o.id 
GROUP BY c.ID, c.name --trebuie mereu group by la having?
HAVING COUNT(c.ID)=1;--se putea altfel


SELECT c.id, c.name FROM Cities c
WHERE c.id NOT IN 
	(SELECT c.id   FROM Cities c 
		INNER JOIN Organizations o  ON c.ID =o.ID_Headquarter WHERE c.is_capital=1)
 AND c.is_capital=1;--cum era varianta cu inca un join..si care e mai eficient ..eficienta si la c.is_capital twice?

SELECT SUM(c.population) as 'Population',con.name FROM Countries c
	INNER JOIN Continent con ON c.ID_Continent = con.ID
GROUP BY con.name;

SELECT COUNT(c.ID) as 'Nr of countries',con.name FROM Countries c
	INNER JOIN Continent con ON c.ID_Continent = con.ID
GROUP BY con.name;


	


