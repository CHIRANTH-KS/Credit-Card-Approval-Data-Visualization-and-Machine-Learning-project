/*Capstone Project 
Project proposal to predict credit card approval*/

/*1. Group the customers based on their income type and find the average of their annual income.*/

SELECT `Employment status`, AVG(`Income`) AS AverageIncome
FROM `cc_full_data1`
GROUP BY `Employment status`;

/*2. Find the female owners of cars and property.*/

SELECT *
FROM `cc_full_data1`
WHERE `Gender` = 'F' AND (`Has a car` = 'Y' OR `Has a property` = 'Y'); /* to get all the information*/

SELECT Ind_ID, Gender, `Has a car`, `Has a property`
FROM `cc_full_data1`
WHERE `Gender` = 'F' AND (`Has a car` = 'Y' OR `Has a property` = 'Y'); /* to get focused information*/


/*3. Find the male customers who are staying with their families.*/

SELECT *
FROM `cc_full_data1`
WHERE `Gender` = 'M' AND `Family member count` > 0; /* to get all the information*/

SELECT Ind_ID, Gender, `Has a car`, `Has a property`, `Family member count`
FROM `cc_full_data1`
WHERE `Gender` = 'M' AND `Family member count` > 0;/* to get focused information*/


/*4. Please list the top five people having the highest income.*/

SELECT *
FROM `cc_full_data1`
ORDER BY `Income` DESC
LIMIT 5;

/*5. How many married people are having bad credit?*/

SELECT COUNT(*) AS BadCreditMarriedCount
FROM `cc_full_data1`
WHERE `Marital status` = 'Married' AND `Is high risk` = 1;

/*6. What is the highest education level and what is the total count?*/

SELECT `Education level`, COUNT(*) AS TotalCount
FROM `cc_full_data1`
GROUP BY `Education level`
ORDER BY TotalCount DESC
LIMIT 1 ;

/*7. Between married males and females, who is having more bad credit? */

SELECT `Marital status`, `Gender`, COUNT(*) AS BadCreditCount
FROM `cc_full_data1`
WHERE `Is high risk` = 1 AND `Marital status` = 'Married'
GROUP BY `Marital status`, `Gender`;














