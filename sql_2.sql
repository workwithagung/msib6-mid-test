WITH summarize_item AS (
    SELECT item, count(1) total
    FROM item_bought
    GROUP BY 1
)
SELECT item
FROM summarize_item
WHERE total != (SELECT MAX(total) FROM summarize_item)
AND total != (SELECT MIN(total) FROM summarize_item)
