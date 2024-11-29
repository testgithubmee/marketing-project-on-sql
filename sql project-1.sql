create database marketing_project; 

#1 show all columns & rows in table.
Use marketing_project;
SELECT * FROM marketing;

#2 show only the campaign_name & campaign_id columns.
Use marketing_project;
SELECT campaign_name,campaign_id FROM marketing;

#3 show number of campaign_name in the table.
SELECT COUNT(*) AS NEW FROM marketing;

#4 show unique campaign_name in the table.
Select distinct(campaign_name) AS NEW FROM marketing;

#5 show number of unique campaign_name in the table.
SELECT COUNT(distinct(campaign_name)) AS NEW FROM marketing;

#6 show clicks and revenue for all the campaign with revenue greater than 50000.
SELECT clicks, revenue FROM marketing
WHERE revenue>50000;

#7 show the average revenue for all compaign.
Select avg(revenue) AS NEW FROM marketing;

#8 show the top 10 highest paid revenue.
SELECT revenue FROM marketing
ORDER BY revenue desc
LIMIT 10;

#9 show avg of impressions,mark_spent,clicks,leads for each compaign.
SELECT campaign_name, (impressions+mark_spent+clicks+leads)/4 AS NEW FROM marketing;

#10 show all comapign_name who have the word "google" in compaign.
SELECT campaign_name FROM marketing
WHERE campaign_name LIKE "%google%";

#11 show all comapign_name who have not the word "google" in compaign.
SELECT campaign_name FROM marketing
WHERE campaign_name NOT  LIKE "%google%";

#12 show all comapign_name  not equal the word "google" in compaign.
SELECT campaign_name FROM marketing
WHERE campaign_name != 'google';

#13 show all comapign_name with revenue betwen 50000 and 75000.
SELECT campaign_name, revenue FROM marketing
WHERE revenue between 50000 and 75000;

#14 show all the compaign_name with a impressions more than 15000 or a revenue LESS than 20000.
SELECT campaign_name,impressions,revenue FROM marketing
WHERE impressions>15000 OR revenue<20000;

#15 show all the compaign_name with a impressions more than 15000 AND a revenue LESS than 20000
#and compaign_name containing the word "blogger".
SELECT campaign_name,impressions,revenue FROM marketing
WHERE impressions>15000 AND revenue<20000 AND campaign_name LIKE "%blogger%";




