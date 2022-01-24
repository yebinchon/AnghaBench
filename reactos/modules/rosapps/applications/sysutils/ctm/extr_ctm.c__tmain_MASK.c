#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* TCHAR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  IDS_APP_TITLE ; 
 int /*<<< orphan*/  IDS_COLUMN_CPU ; 
 int /*<<< orphan*/  IDS_COLUMN_IMAGENAME ; 
 int /*<<< orphan*/  IDS_COLUMN_MEM ; 
 int /*<<< orphan*/  IDS_COLUMN_MEM_UNIT ; 
 int /*<<< orphan*/  IDS_COLUMN_NUMBER ; 
 int /*<<< orphan*/  IDS_COLUMN_PF ; 
 int /*<<< orphan*/  IDS_COLUMN_PID ; 
 int /*<<< orphan*/  IDS_CTM_GENERAL_ERR1 ; 
 int /*<<< orphan*/  IDS_CTM_GENERAL_ERR2 ; 
 int /*<<< orphan*/  IDS_CTM_GENERAL_ERR3 ; 
 int /*<<< orphan*/  IDS_IDLE_PROCESS ; 
 int /*<<< orphan*/  IDS_MENU ; 
 int /*<<< orphan*/  IDS_MENU_KILL_PROCESS ; 
 int /*<<< orphan*/  IDS_MENU_QUIT ; 
 int /*<<< orphan*/  IDS_NO ; 
 int /*<<< orphan*/  IDS_YES ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 void* KEY_KILL ; 
 void* KEY_NO ; 
 void* KEY_QUIT ; 
 void* KEY_YES ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int) ; 
 void* FUNC11 (char) ; 
 int FUNC12 (void**) ; 
 int /*<<< orphan*/  FUNC13 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC14 (void**) ; 
 int* columnRightPositions ; 
 scalar_t__ first ; 
 scalar_t__ hInst ; 
 scalar_t__ hStdin ; 
 scalar_t__ hStdout ; 
 int /*<<< orphan*/  inConMode ; 
 void** lpEmpty ; 
 void** lpHeader ; 
 void** lpIdleProcess ; 
 void** lpMemUnit ; 
 void** lpMenu ; 
 void** lpSeparator ; 
 void** lpSeparatorDown ; 
 void** lpSeparatorUp ; 
 void** lpTitle ; 
 int /*<<< orphan*/  outConMode ; 

int FUNC15(int argc, char **argv)
{
	int i;
	TCHAR lpStr[80];

	for (i = 0; i < 80; i++)
		lpEmpty[i] = lpHeader[i] = FUNC11(' ');
	lpEmpty[79] = FUNC11('\0');

	/* Initialize global variables */
	hInst = 0 /* FIXME: which value? [used with LoadString(hInst, ..., ..., ...)] */;

	if (FUNC4(hInst, IDS_COLUMN_NUMBER, lpStr, 80))
	{
		columnRightPositions[0] = FUNC12(lpStr) + 3;
		FUNC13(&lpHeader[2], lpStr, FUNC12(lpStr));
	}
	if (FUNC4(hInst, IDS_COLUMN_IMAGENAME, lpStr, 80))
	{
		columnRightPositions[1] = columnRightPositions[0] + FUNC12(lpStr) + 3;
		FUNC13(&lpHeader[columnRightPositions[0] + 2], lpStr, FUNC12(lpStr));
	}
	if (FUNC4(hInst, IDS_COLUMN_PID, lpStr, 80))
	{
		columnRightPositions[2] = columnRightPositions[1] + FUNC12(lpStr) + 3;
		FUNC13(&lpHeader[columnRightPositions[1] + 2], lpStr, FUNC12(lpStr));
	}
	if (FUNC4(hInst, IDS_COLUMN_CPU, lpStr, 80))
	{
		columnRightPositions[3] = columnRightPositions[2] + FUNC12(lpStr) + 3;
		FUNC13(&lpHeader[columnRightPositions[2] + 2], lpStr, FUNC12(lpStr));
	}
	if (FUNC4(hInst, IDS_COLUMN_MEM, lpStr, 80))
	{
		columnRightPositions[4] = columnRightPositions[3] + FUNC12(lpStr) + 3;
		FUNC13(&lpHeader[columnRightPositions[3] + 2], lpStr, FUNC12(lpStr));
	}
	if (FUNC4(hInst, IDS_COLUMN_PF, lpStr, 80))
	{
		columnRightPositions[5] = columnRightPositions[4] + FUNC12(lpStr) + 3;
		FUNC13(&lpHeader[columnRightPositions[4] + 2], lpStr, FUNC12(lpStr));
	}

	for (i = 0; i < columnRightPositions[5]; i++)
	{
		lpSeparator[i] = FUNC11('-');
		lpSeparatorUp[i] = FUNC11('^');
		lpSeparatorDown[i] = FUNC11('v');
	}
	lpHeader[0] = FUNC11('|');
	lpSeparator[0] = FUNC11('+');
	lpSeparatorUp[0] = FUNC11('^');
	lpSeparatorDown[0] = FUNC11('v');
	for (i = 0; i < 6; i++)
	{
		lpHeader[columnRightPositions[i]] = FUNC11('|');
		lpSeparator[columnRightPositions[i]] = FUNC11('+');
		lpSeparatorUp[columnRightPositions[i]] = FUNC11('^');
		lpSeparatorDown[columnRightPositions[i]] = FUNC11('v');
	}
	lpHeader[columnRightPositions[5] + 1] = FUNC11('\0');
	lpSeparator[columnRightPositions[5] + 1] = FUNC11('\0');
	lpSeparatorUp[columnRightPositions[5] + 1] = FUNC11('\0');
	lpSeparatorDown[columnRightPositions[5] + 1] = FUNC11('\0');


	if (!FUNC4(hInst, IDS_APP_TITLE, lpTitle, 80))
		lpTitle[0] = FUNC11('\0');
	if (!FUNC4(hInst, IDS_COLUMN_MEM_UNIT, lpMemUnit, 3))
		lpMemUnit[0] = FUNC11('\0');
	if (!FUNC4(hInst, IDS_MENU, lpMenu, 80))
		lpMenu[0] = FUNC11('\0');
	if (!FUNC4(hInst, IDS_IDLE_PROCESS, lpIdleProcess, 80))
		lpIdleProcess[0] = FUNC11('\0');

	if (FUNC4(hInst, IDS_MENU_QUIT, lpStr, 2))
		KEY_QUIT = lpStr[0];
	if (FUNC4(hInst, IDS_MENU_KILL_PROCESS, lpStr, 2))
		KEY_KILL = lpStr[0];
	if (FUNC4(hInst, IDS_YES, lpStr, 2))
		KEY_YES = lpStr[0];
	if (FUNC4(hInst, IDS_NO, lpStr, 2))
		KEY_NO = lpStr[0];

	FUNC2();

	if (hStdin == INVALID_HANDLE_VALUE || hStdout == INVALID_HANDLE_VALUE)
	{
		if (FUNC4(hInst, IDS_CTM_GENERAL_ERR1, lpStr, 80))
			FUNC14(lpStr);
		return -1;
	}

	if (FUNC1(hStdin, &inConMode) == 0)
	{
		if (FUNC4(hInst, IDS_CTM_GENERAL_ERR2, lpStr, 80))
			FUNC14(lpStr);
		return -1;
	}

	if (FUNC1(hStdout, &outConMode) == 0)
	{
		if (FUNC4(hInst, IDS_CTM_GENERAL_ERR3, lpStr, 80))
			FUNC14(lpStr);
		return -1;
	}

	FUNC9(hStdin, 0); //FIXME: Should check for error!
	FUNC9(hStdout, 0); //FIXME: Should check for error!

	FUNC6();

	while (1)
	{
		DWORD numEvents;

		FUNC5();
		FUNC0();

		/* WaitForSingleObject for console handles is not implemented in ROS */
		FUNC10(hStdin, 1000);
		FUNC3(hStdin, &numEvents);

		if (numEvents > 0)
		{
			if (FUNC7(numEvents) == TRUE)
				break;
			first = 0;
		}
	}

	FUNC8();
	return 0;
}