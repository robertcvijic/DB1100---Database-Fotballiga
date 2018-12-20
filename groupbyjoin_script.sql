/* VIDEO 4 */
SELECT COUNT(PlayerID)
FROM player;

/*------------------------------------------------------------*/

SELECT playerID, SUM(Minutes_played), AVG(Minutes_played)
FROM playerStats
GROUP BY playerID;

/*------------------------------------------------------------*/

  SELECT PlayerID, PlayerNr, F_name, L_name, Name, Nickname, ManagerID
FROM player
	JOIN team ON player.teamID = team.teamID
ORDER BY F_name ASC;

/*------------------------------------------------------------*/

/* VIDEO 5 */


SELECT AVG(minutes_played), playerID						   				/* 1*/
FROM  playerstats; 


																			/* 2 */
SELECT AVG(minutes_played), playerID
FROM playerstats
GROUP BY playerID;


																			/* 3 */
SELECT AVG(playerstats.minutes_played), player.f_name, player.l_name
FROM player
    JOIN playerstats ON player.playerID = playerstats.playerID
GROUP BY playerID;


																			/* 4 */
SELECT AVG(playerstats.minutes_played), player.f_name, player.l_name
FROM player
    JOIN playerstats ON player.playerID = playerstats.playerID
GROUP BY playerstats.playerID;


																			/* 5 */
SELECT AVG(playerstats.minutes_played), player.f_name, player.l_name, team.name  
FROM player
	JOIN team ON player.teamID = team.teamID
    JOIN playerstats ON player.playerID = playerstats.playerID
GROUP BY playerstats.playerID;

