OPTIONS(skip=1)
load data 
infile './EmployeeReport.csv'
 truncate  into table EMP_TABLE
 fields terminated by "," optionally enclosed by '"' 	  
 ( 
 ID INTEGER EXTERNAL,
 FIRST CHAR,
 LAST CHAR,
 AGE FILLER,
 Phone INTEGER EXTERNAL "NVL(:Phone,0)",
 EMAIL CHAR
 )