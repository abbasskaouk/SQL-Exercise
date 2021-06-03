PART-1: Basic Queries:

	Problem 1:
	
		SELECT name 
		FROM students
		
	----------------------------------------------------------------------------
	
	Problem 2:
		
		SELECT * 
		FROM students
		WHERE age > 30
		
	----------------------------------------------------------------------------
	
	Problem 3:
	
		SELECT name
		FROM students
		WHERE Gender='F' AND age > 30
		
	----------------------------------------------------------------------------
	
	Problem 4:
	
		SELECT Points
		FROM students
		WHERE name='Alex'

	----------------------------------------------------------------------------
	
	Problem 5:
	
		INSERT INTO students (name, Age, Gender, Points)
		VALUES ('Abbass', '25', 'M', '500')
	
	----------------------------------------------------------------------------
	
	Problem 6:
	
		UPDATE students
		SET Points=Points+100
		WHERE name="Basma"
	
	----------------------------------------------------------------------------
	
	Problem 7:
	
		UPDATE students
		SET Points=Points-100
		WHERE name="Alex"
	
	----------------------------------------------------------------------------
	
PART-2: 

	***Creating Table:

		CREATE TABLE graduates (
			ID INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
			Name TEXT NOT NULL UNIQUE,
			Age INTEGER,
			Gender TEXT,
			Points INTEGER,
			Graduation TEXT
		)
	
	***Copy Layal data from students to graduates:
	
		INSERT INTO graduates (ID, name, Age, Gender, Points)
		SELECT Id, name, Age, Gender, Points
		FROM students
		WHERE name="Layal"
	
	***Add the graduation date previously mentioned to Layals record in graduates
	
		UPDATE graduates
		SET Graduation = '08/09/2018'
		WHERE ID = 4
	
	***Remove Layals record from students

		DELETE FROM students
		WHERE name="Layal"
	
	----------------------------------------------------------------------------
	
PART-3: JOINS:

	Problem 1:
	
		SELECT e.name, e.Company, c.Date
		FROM employees e
		INNER JOIN companies c ON e.Company = c.name
	
	Problem 2:
	
		SELECT e.name, e.Company, c.Date as DateMade
		FROM employees e
		INNER JOIN companies c ON e.Company = c.name
		WHERE Date < 2000
	
	Problem 3:
	
		SELECT e.Company, e.Role as Has , e.name as empName
		FROM employees e
		WHERE e.Role = 'Graphic Designer'
	
	----------------------------------------------------------------------------
	
PART-4: COUNT & FILTER:

	Problem 1:
	
		SELECT Name, MAX(Points) as Highest_Points
		FROM students
	
	Problem 2:
	
		SELECT AVG(Points) as Average_Points
		FROM students
	
	Problem 3:
	
		SELECT COUNT(name) as count
		FROM students
		WHERE Points = 500
	
	Problem 4:
	
		SELECT name
		FROM students
		WHERE Name LIKE '%s%'
	
	Problem 5:
	
		SELECT *
		FROM students
		ORDER BY Points DESC