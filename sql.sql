create database assignment;
use assignment;
select * from fifa limit 5;
#how many players
select count(*) from fifa where id ;
#How many nationalities do these players belong to
select count(distinct nationality) from fifa;
#total wge,average,std
SELECT SUM(Wage) AS total_wage,
AVG(Wage) AS average_wage,
STDDEV(Wage) AS stddev_wage FROM Fifa;
#which nationalit has highest players ,top 3 nationalities
SELECT  COUNT(*) AS num_players
FROM Fifa
GROUP BY Nationality
ORDER BY num_players DESC
LIMIT 3;
#highest wage ,lowest wage
SELECT Name, Wage
FROM Fifa
WHERE Wage = (SELECT MAX(Wage) FROM Fifa) limit 1;
SELECT Name, Wage
FROM Fifa
WHERE Wage = (SELECT MIN(Wage) FROM Fifa) limit 1;
select * from fifa limit 5;
#better overall
SELECT Name, overall
FROM Fifa
WHERE overall = (SELECT max(overall) FROM Fifa);
#worst overall
SELECT Name, overall
FROM Fifa
WHERE overall = (SELECT MIN(overall) FROM Fifa);
#club  highest overall 
SELECT Club, AVG(Overall) AS avg_over
FROM Fifa
GROUP BY Club
ORDER BY avg_over DESC
LIMIT 1;
#highese average overall
SELECT Club, AVG(Overall) AS avg_overall
FROM Fifa
GROUP BY Club
ORDER BY avg_overall DESC
LIMIT 1;
#preferred leg ,right or left
SELECT Preferred_Foot, COUNT(*) AS prefer_foot
FROM Fifa
GROUP BY Preferred_Foot;
#which jersey is the lucky
SELECT Jersey_Number, COUNT(*) AS frequency
FROM Fifa
GROUP BY Jersey_Number
ORDER BY frequency DESC
LIMIT 1;
#What is the frequency distribution of nationalities among players whose club name starts with M
SELECT Nationality, COUNT(*) AS num_players
FROM Fifa
WHERE Club LIKE 'M%'
GROUP BY Nationality
ORDER BY num_players DESC;
#How many players have joined their respective clubs in the date range 20 May 2018 to 10 April 2019(both inclusion)
SELECT COUNT(*) AS num_players
FROM Fifa
WHERE STR_TO_DATE BETWEEN '2018-05-20' AND '2019-04-10';
#How many players have joined their respective clubs date wise
SELECT STR_TO_DATE  AS join_date,
COUNT(*) AS num_players
FROM Fifa
GROUP BY join_date
ORDER BY join_date;
#How many players have joined their respective clubs yearly
SELECT YEAR(STR_TO_DATE AS join_year,
COUNT(*) AS num_players
FROM Fifa
GROUP BY join_year
ORDER BY join_year;
