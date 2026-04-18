-- 1-mashq
SELECT 
    login_date,
    COUNT(DISTINCT user_id) AS unique_users
FROM logins
GROUP BY login_date
ORDER BY login_date;
-- 2-mashq
SELECT 
    N,
    CASE 
        WHEN P IS NULL THEN 'Root'
        WHEN N IN (SELECT DISTINCT P FROM bst WHERE P IS NOT NULL) THEN 'Inner'
        ELSE 'Leaf'
    END AS NodeType
FROM bst
ORDER BY N;
