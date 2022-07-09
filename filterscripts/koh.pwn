#include <a_samp>
#include <zcmd>

#define POS
public OnFilterScriptInit()
{
    CreateObject(3043, 9.29330, 1.52850, 2.08260,   0.00000, 0.00000, -47.00000);
	CreateObject(3043, 4.09230, -3.30710, 2.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 11.17510, -0.87010, 3.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 5.99578, -5.67203, 3.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 10.23350, -10.53030, 3.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 15.38566, -5.82354, 3.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 12.55675, -12.91038, 2.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 4.15602, -10.97116, 2.08260,   0.00000, 0.00000, 223.00000);
	CreateObject(3043, 15.23996, -0.64323, 2.08260,   0.00000, 0.00000, 223.00000);
	CreateObject(3043, 12.92821, -4.00735, 3.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 8.39483, -7.68495, 3.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 11.84829, -5.02911, 4.08260,   0.00000, 0.00000, 133.00000);
	CreateObject(3043, 9.20594, -7.56319, 4.08260,   0.00000, 0.00000, 133.00000);
	return 1;
}

public OnFilterScriptExit()
{
	return 1;
}
public OnPlayerDisconnect(playerid, reason)
{
	GivePlayerMoney(playerid, -1000);
	return 1;
}
public OnPlayerDeath(playerid)
{
	if(GetPlayerVirtualWorld(playerid) == 2)
	{
		GivePlayerMoney(playerid, -1000);
	}
	return 1;
}
forward Checking(playerid);
public Checking(playerid)
{
	if(GetPlayerVirtualWorld(playerid) == 2)
	{
		if(IsPlayerInRangeOfPoint(playerid,7.0,12.2433,-4.3100,6.5360))
		{
			GivePlayerMoney(playerid, 1);
		}
		else if(GetPlayerMoney(playerid) == 1000)
		{
			SendClientMessageToAll(-1, "WIN");
			GivePlayerMoney(playerid, 10000);
		}
	}	
	return 1;
}
CMD:kingoffhill(playerid,params[])
{
	SetPlayerPos(playerid,-5.1680,-20.7406,3.1172);
	SetTimerEx("Checking",60,true,"ï",playerid);
	GivePlayerWeapon(playerid, 30, 100);
	SetPlayerVirtualWorld(playerid, 2);
	SetPlayerCheckpoint(playerid,12.2433,-4.3100,6.5360);
	return 1;
}

