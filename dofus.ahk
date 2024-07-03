#Requires AutoHotkey v2.0

NbOfAccounts := 4

ClicAltEsc()
{
	Click
	sleep(Random(150, 300))
	Send "{Alt down}{Esc}{Alt up}"
	sleep(Random(150, 300))
	return
}

Move(x, y)
{
	if (x > 0 and y > 0)
	{
		MouseMove(x, y)
	}
	Loop NbOfAccounts
	{
		ClicAltEsc()
	}
	return
}

Up::
{
	Move(1000, 15)
	return
}

Down::
{
	Move(1000, 940)
	return
}

Left::
{
	Move(300, 500)
	return
}

Right::
{
	Move(1700, 500)
	return
}

RCtrl::
{
	Move(0,0)
	return
}

JoinFight(x, y)
{
	Loop (NbOfAccounts - 1)
	{
		ClicAltEsc()
	}
	return
}

Insert::
{
	Send "{Alt down}{Esc}{Alt up}"
	Move(300, 680)
	return
}

F1::
{
	Send "{F4}{Alt down}{Esc}{Alt up}"
	return
}