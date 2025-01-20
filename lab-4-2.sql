-- What are the first and last names of the players who 
-- played for the 2020 Chicago Cubs?

SELECT 
    first_name,
    last_name 
FROM players 
INNER JOIN stats on players.id = stats.player_id
WHERE team_id = 
    (SELECT id 
    FROM teams 
    WHERE name = "Chicago Cubs" 
    AND year = "2020"
    )
;

-- Hint: combine WHERE clauses using AND, e.g.
-- WHERE column1 = expression1
-- AND column2 = expression2

-- Expected result: 47 rows starting with
--
-- +------------+-----------+
-- | Jason      | Adam      |
-- | Albert     | Almora    |
-- | Adbert     | Alzolay   |
-- | Javier     | Baez      |
-- | David      | Bote      |
-- | Rex        | Brothers  |
-- | Kris       | Bryant    |
-- | Victor     | Caratini  |
-- | Andrew     | Chafin    |
-- | Tyler      | Chatwood  |
-- | Willson    | Contreras |
-- | Yu         | Darvish   |
-- | Matt       | Dermody   |
-- | Billy      | Hamilton  |
-- | Ian        | Happ      |


