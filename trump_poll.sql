-- 1) Crea una nuova tabella e trova il minimo e il massimo weight raggruppato per pollsters. 
USE trump_poll;
CREATE TABLE query_1
AS (SELECT pollster, MIN(weight) AS min_weight, MAX(weight) AS max_weight
FROM trump_poll.approval_polllist AS t
GROUP BY pollster);

-- 2) Crea una nuova tabella e trova media del appove and disapprove per popolazione.
CREATE TABLE query_2
AS (SELECT population, AVG(approve) AS media_approve, AVG(disapprove) AS media_disapprove
FROM trump_poll.approval_polllist AS t
GROUP BY population);

-- 3) Trova tutti i pollsters che iniziano con C e finiscono con S.
CREATE TABLE query_3
AS (SELECT * 
FROM trump_poll.approval_polllist
WHERE pollster LIKE 'c%s');

