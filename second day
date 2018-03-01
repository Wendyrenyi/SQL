#####Chapter 3. Working with Multiple Tables
##########################################################################################################
3.1. Stacking One Rowset atop Another
# stacking one result set atop the other. The tables do not necessarily have a common key,
# but their columns do have the same data types.
# display the name and department number of the employees in department 10 in table EMP, 
# along with the name and department number of each department in table DEPT. 
	ENAME_AND_DNAME      DEPTNO
	---------------  ----------
	CLARK                    10
	KING                     10
	MILLER                   10
	----------
	ACCOUNTING               10
	RESEARCH                 20
	SALES                    30
	OPERATIONS               40
  
  SELECT 
    name as ename_and_dname,
    deptno
  FROM
    EMP
  WHERE deptno = 10
  
  UNION ALL
  
  SELECT
    name,
    deptno
  FROM dept
  
  注意：1. must match in number and data type.---UNION ALL
       2. UNION ALL will include duplicates if they exist. If you wish to filter out duplicates, use the UNION operator. 
       3. UNION will most likely result in a sort operation in order to eliminate duplicates. 
       4. You wouldn’t use DISTINCT in a query unless you had to, 
       5. don’t use UNION instead of UNION ALL unless you have to.
       
  select distinct deptno
	  from (
	select deptno
	  from emp
	 union all
	select deptno
	  from dept
	         )
           
 ==
 select deptno 
 from emp
 UNION 
 select deptno
 from dept
 
 ##########################################################################################################
 3.2. Combining Related Rows
 For example, you want to display the names of all employees in department 10 
 along with the location of each employee’s department, but that data is stored in two separate tables. 
 ENAME       LOC
	----------  ----------
	CLARK       NEW YORK
	KING        NEW YORK
	MILLER      NEW YORK
 
 1 select e.ename, d.loc
 2   from emp e, dept d
 3  where e.deptno = d.deptno
 4    and e.deptno = 10

 OR
 
 select e.ename, d.loc
 from emp e 
 inner join dept d
	    on (e.deptno = d.deptno)
 where e.deptno = 10

注意where在最后面
########################################################################################################## 
ENAME       JOB              SAL
	----------  --------- ----------
	SMITH       CLERK            800
	ADAMS       CLERK           1100
	JAMES       CLERK            950
	MILLER      CLERK           1300
  
   EMPNO  ENAME       JOB             SAL     DEPTNO
	--------  ----------  --------- ---------- ---------
	   7369   SMITH       CLERK           800         20
	   7876   ADAMS       CLERK          1100         20
	   7900   JAMES       CLERK           950         30
	   7934   MILLER      CLERK          1300         10
 
 SELECT
  a.ename,
  a.job,
  a.sal,
  a.empno,
  a.deptno
 FROM 
  emp a
 JOIN view V b
 ON (a.ename = b.ename AND
 a.job = b.job AND
 a.sal = b.sal)
 注意：on之后每个用AND，括号括起来，没有逗号
 ########################################################################################################## 
 3.4. Retrieving Values from One Table That Do Not Exist in Another
 you want to find which departments (if any) in table DEPT do not exist in table EMP. 
 In the example data, DEPTNO 40 from table DEPT does not exist in table EMP, 
 DEPTNO
	  ----------
	          40
   SELECT deptno
   FROM dept a, emp b
   WHERE a.deptno != b.deptno   xxxxx
   
   1 select deptno
	2   from dept
	3  where deptno not in (select deptno from emp) 

########################################################################################################## 
3.5. Retrieving Rows from One Table That Do Not Correspond to Rows in Another
  
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
