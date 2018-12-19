

SELECT player.F_name AS 'First name', player.L_name AS 'Last name', team.name AS 'Team'
FROM player
	JOIN team ON player.teamID = team.teamID
WHERE player.f_name = ''
	OR player.l_name = ''
    OR team.name = '';
    
    

delimiter :
CREATE PROCEDURE playerAndTeam (in playerFirstName VARCHAR(50), in playerLastName VARCHAR(50), in teamName VARCHAR(50))
BEGIN
	SELECT player.F_name AS 'First name', player.L_name AS 'Last name', team.name AS 'Team'
	FROM player
		JOIN team ON player.teamID = team.teamID
	WHERE player.f_name = playerFirstName
		OR player.l_name = playerLastName
		OR team.name = teamName;
END
:
delimiter ;



CALL playerAndTeam('Chris','Jensen', 'Red Bulls United');


DROP PROCEDURE playerAndTeam;
