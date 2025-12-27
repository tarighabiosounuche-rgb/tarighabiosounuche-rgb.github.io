SELECT *
FROM [dbo].['Workplace Safety Data$']

SELECT DISTINCT ([INCIDENT TYPE]),([PLANT])
FROM [dbo].['Workplace Safety Data$'] 

--1	How many incidents occurred at each plant?
SELECT COUNT (DISTINCT PLANT) 
FROM [dbo].['Workplace Safety Data$'] 

--2	What is the total incident cost per department?
SELECT SUM ([Incident Cost])
FROM [dbo].['Workplace Safety Data$']

--3	Which incident type resulted in the highest total days lost?
SELECT GREATEST ([INCIDENT TYPE]), ([DAYS LOST]) 
FROM [dbo].['Workplace Safety Data$']

SELECT MAX ([DAYS LOST]) 
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([INCIDENT TYPE])

SELECT ([INCIDENT TYPE]), MAX ([DAYS LOST]) 
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([INCIDENT TYPE])

SELECT ([INCIDENT TYPE]), MAX ([DAYS LOST])
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([INCIDENT TYPE])
ORDER BY ([INCIDENT TYPE]) DESC

--4	What is the distribution of incident types by shift?
SELECT ([Incident Type]),([Shift])
FROM [dbo].['Workplace Safety Data$']

SELECT DISTINCT ([INCIDENT TYPE]),([SHIFT])
FROM [dbo].['Workplace Safety Data$'] 

--5	What is the average incident cost for each injury location?
SELECT AVG ([Incident Cost])
FROM [dbo].['Workplace Safety Data$']

--6	Which age group has the highest number of incidents?
SELECT ([INCIDENT TYPE]), MAX ([AGE GROUP]) 
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([INCIDENT TYPE])

--7	How many incidents were reported as 'Lost Time' by each plant?
SELECT * 
FROM [dbo].['Workplace Safety Data$']
WHERE ([REPORT TYPE]) = 'LOST TIME'
 
SELECT COUNT (*)
FROM [dbo].['Workplace Safety Data$']
WHERE ([REPORT TYPE]) = 'LOST TIME';

--8	Which department had the highest number of 'Crush & Pinch' incidents?
SELECT MAX (DEPARTMENT)
FROM [dbo].['Workplace Safety Data$']
WHERE ([INCIDENT TYPE]) = 'CRUSH & PINCH'

--9	Which plants reported the most "Near Miss" incidents?
SELECT MAX ([PLANT])
FROM [dbo].['Workplace Safety Data$']
WHERE ([INCIDENT TYPE]) = 'NEAR MISS'

--10	What is the total number of incidents by year and month?
select year
       ,month
       ,count(*)
from [dbo].['Workplace Safety Data$']
group by year, month

--11	Which gender has the most reported incidents?
SELECT ([INCIDENT TYPE]), MAX ([GENDER]) 
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([INCIDENT TYPE])

--12	What is the total cost of incidents per year?
SELECT SUM ([Incident Cost])
FROM [dbo].['Workplace Safety Data$']

--13	Which incident resulted in the highest cost?
SELECT ([INCIDENT TYPE]), MAX ([INCIDENT COST]) AS 'INCIDENT COST'
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([INCIDENT TYPE])

--14	What is the total cost of incidents for each report type?
SELECT SUM ([INCIDENT COST]) AS 'TOTAL COST'
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([REPORT TYPE])

--15	Which departments had incidents with more than 2 days lost? 
SELECT ([DEPARTMENT]), ([DAYS LOST]), ([INCIDENT TYPE])
FROM [dbo].['Workplace Safety Data$']
WHERE ([DAYS LOST]) >= '2'

--16	What is the average number of days lost per incident type?
SELECT ([INCIDENT TYPE]), AVG ([DAYS LOST])
FROM [dbo].['Workplace Safety Data$']
GROUP BY ([INCIDENT TYPE])

--17	What is the distribution of incidents by shift (Day, Afternoon, Night)?
 SELECT ([INCIDENT TYPE]),([SHIFT]) AS 'DAY', 'AFTERNOON', 'NIGHT'
 FROM [dbo].['Workplace Safety Data$']

 SELECT ([INCIDENT TYPE]), ([SHIFT]) AS 'SHIFT'
 FROM [dbo].['Workplace Safety Data$']

 SELECT ([INCIDENT TYPE]), ([SHIFT])
 FROM  [dbo].['Workplace Safety Data$']
 WHERE [DAYS LOST] IN 'DAY, AFTERNOON, NIGHT'
 GROUP BY (incident type)
