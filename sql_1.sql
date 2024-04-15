SELECT T.salary
FROM (
    SELECT salary, RANK() OVER(ORDER BY salary DESC ) salary_rank
    FROM employee_table
) T
WHERE salary_rank = 3
LIMIT 1
