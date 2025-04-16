-- 1--
-- i)--
SELECT TEACHER_NAME,DOJ FROM TEACHER WHERE TEACHER_NAME LIKE '%i%';

-- ii)--
select * from teacher where doj like '%-09-%';

-- 2 --
select * from transact
where TYPE = 'WITHDRAW';

SELECT ANO, AMOUNT 
FROM TRANSACT 
WHERE TYPE IN ('Deposit', 'Withdraw') 
AND DOT BETWEEN '2017-05-01' AND '2017-05-31';

SELECT MIN(DOT) AS First_Transaction_Date
FROM TRANSACT 
WHERE ANO = 102;

SELECT A.ANO, A.ANAME, T.AMOUNT, T.DOT
FROM ACCOUNT A
JOIN TRANSACT T ON A.ANO = T.ANO
WHERE T.AMOUNT <= 3000;

SELECT ANO, ANAME
FROM ACCOUNT
WHERE ADDRESS NOT IN ('CHENNAI', 'BANGALORE');

SELECT DISTINCT ANO 
FROM TRANSACT;

SELECT ANO, COUNT(*), MIN(AMOUNT)
FROM TRANSACT
GROUP BY ANO
HAVING COUNT(*) > 1;

SELECT COUNT(*), SUM(AMOUNT)
FROM TRANSACT
WHERE DOT <= '2017-10-01';



-- 3--
 SELECT TNAME FROM TRAINS
 WHERE START = 'NEW DELHI';
 
 SELECT PNR,PNAME,GENDER,AGE FROM PASSENGERS
WHERE AGE < 50;

SELECT GENDER, COUNT(*) 
FROM PASSENGERS 
GROUP BY GENDER;

SELECT * 
FROM PASSENGERS 
WHERE TNO = 12015;


SELECT MAX(TRAVELDATE) AS Max_TravelDate, MIN(TRAVELDATE) AS Min_TravelDate
FROM PASSENGERS 
WHERE GENDER = 'FEMALE';


SELECT DISTINCT TRAVELDATE 
FROM PASSENGERS;

SELECT T.TNAME, P.PNAME 
FROM TRAINS T, PASSENGERS P 
WHERE T.TNO = P.TNO 
AND P.AGE BETWEEN 50 AND 60;





















