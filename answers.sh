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
	

	
	
	
	
	
	
	
	
	