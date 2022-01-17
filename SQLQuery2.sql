select * from Jobs..DataAnalyst$

--data exploration

-- the ratio between the year of foundtion to salary
-- orginaze the relevant data

--UPDATE Jobs..DataAnalyst$ SET [Salary Estimate] = SUBSTRING([Salary Estimate],1,CHARINDEX(' ', [Salary Estimate]+' ', 1))

--UPDATE Jobs..DataAnalyst$ SET [Salary Estimate] = REPLACE(REPLACE([Salary Estimate],'$',''),'K','')

--UPDATE Jobs..DataAnalyst$ SET [min salary] = Substring([Salary Estimate], 1, Charindex('-',[Salary Estimate])-1);

--UPDATE Jobs..DataAnalyst$ SET [max salary] = Substring([Salary Estimate], Charindex('-', [Salary Estimate])+1, LEN([Salary Estimate]))

--UPDATE Jobs..DataAnalyst$ SET [min salary] = CAST([min salary] AS int)

--UPDATE Jobs..DataAnalyst$ SET [max salary] = CAST([max salary] AS int)


--SELECT [min salary]
--,CASE WHEN [min salary] BETWEEN 0 AND 70  THEN 'Group 1'
--      WHEN [min salary] BETWEEN 70 AND 110 THEN 'Group 2'
--      WHEN [min salary] BETWEEN 110 AND 190 THEN 'Group 3'
--     END as [Salary Groups]
--FROM Jobs..DataAnalyst$

--DELETE FROM Jobs..DataAnalyst$ WHERE [Founded] = -1

--SELECT [Size] = SUBSTRING([Size],0,CHARINDEX('employees', [Size]+' ', 0))  FROM Jobs..DataAnalyst$ WHERE [Size] LIKE '%to%'

--UPDATE Jobs..DataAnalyst$ SET [Size] = SUBSTRING([Size],1,CHARINDEX('+', [Size]+' ', 1)) WHERE [Size] = '10000+ employees'

--UPDATE Jobs..DataAnalyst$ SET [Size] = SUBSTRING([Size],0,CHARINDEX('employees', [Size]+' ', 0)) WHERE [Size] LIKE '%to%'

--SELECT [Size]
--,CASE WHEN [Size] = '1 to 50'  THEN 'Group 1'
--      WHEN [Size] = '51 to 200' THEN 'Group 2'
--      WHEN [Size] = '201 to 500'  THEN 'Group 3'
--      WHEN [Size] = '501 to 1000'  THEN 'Group 4'
--      WHEN [Size] = '1001 to 5000'  THEN 'Group 5'
--      WHEN [Size] = '5001 to 10000'  THEN 'Group 6'
--      WHEN [Size] = '10000+'  THEN 'Group 3'
--     END as [Size Groups]
--FROM Jobs..DataAnalyst$

SELECT * FROM [dbo].[RequiredSkills]