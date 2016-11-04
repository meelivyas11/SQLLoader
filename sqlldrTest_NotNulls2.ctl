OPTIONS(skip=1)
load data 
infile './EmployeeReport.csv'
	truncate  into table EMP_TABLE
	TRAILING NULLCOLS  
	 ( 
	 ID INTEGER EXTERNAL terminated by "," ,
	 FIRST CHAR terminated by "," optionally enclosed by '"',
	 LAST CHAR terminated by ",",
	 AGE FILLER terminated by ",",
	 Phone INTEGER EXTERNAL terminated by "," "NVL(:Phone,0)",
	 EMAIL CHAR terminated by ","
	 )