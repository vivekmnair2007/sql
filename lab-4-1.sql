-- How many lifetime hits does Barry Bonds have?

SELECT sum(hits) 
FROM stats stat
INNER JOIN players player on player.id = stat.player_id 
WHERE player.first_name = "Barry" 
AND player.last_name="Bonds"; 

-- Expected result:
-- 2935


