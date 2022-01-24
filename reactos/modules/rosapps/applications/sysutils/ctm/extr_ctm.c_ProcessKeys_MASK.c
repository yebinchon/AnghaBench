#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ProcessId; } ;
struct TYPE_4__ {int X; scalar_t__ Y; } ;
typedef  scalar_t__ TCHAR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  TYPE_1__ COORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int FALSE ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  IDS_KILL_PROCESS ; 
 int /*<<< orphan*/  IDS_KILL_PROCESS_ERR1 ; 
 int /*<<< orphan*/  IDS_KILL_PROCESS_ERR2 ; 
 scalar_t__ KEY_KILL ; 
 scalar_t__ KEY_NO ; 
 scalar_t__ KEY_QUIT ; 
 scalar_t__ KEY_YES ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  PROCESS_TERMINATE ; 
 int ProcPerScreen ; 
 int ProcessCount ; 
 scalar_t__ ScreenLines ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ VK_DOWN ; 
 scalar_t__ VK_END ; 
 scalar_t__ VK_HOME ; 
 scalar_t__ VK_NEXT ; 
 scalar_t__ VK_PRIOR ; 
 scalar_t__ VK_UP ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,TYPE_1__,int*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__*) ; 
 scalar_t__ first ; 
 int /*<<< orphan*/  hInst ; 
 int /*<<< orphan*/  hStdin ; 
 int /*<<< orphan*/  hStdout ; 
 scalar_t__* lpEmpty ; 
 TYPE_2__* pPerfData ; 
 int scrolled ; 
 int selection ; 

int FUNC10(int numEvents)
{
	DWORD numChars;
	TCHAR key;
	if ((ProcessCount-scrolled < 17) && (ProcessCount > 17))
		scrolled = ProcessCount-17;

	key = FUNC1(numEvents);
	if (key == KEY_QUIT)
		return TRUE;
	else if (key == KEY_KILL)
	{
		// user wants to kill some process, get his acknowledgement
		DWORD pId;
		COORD pos;
		TCHAR lpStr[100];

		pos.X = 1; pos.Y =ScreenLines-1;
		if (FUNC3(hInst, IDS_KILL_PROCESS, lpStr, 100))
			FUNC7(hStdout, lpStr, FUNC9(lpStr), pos, &numChars);

		do {
			FUNC2(hStdin, &pId);
			key = FUNC1(pId);
		} while (key != KEY_YES && key != KEY_NO);

		if (key == KEY_YES)
		{
			HANDLE hProcess;
			pId = pPerfData[selection+scrolled].ProcessId;
			hProcess = FUNC4(PROCESS_TERMINATE, FALSE, pId);

			if (hProcess)
			{
				if (!FUNC6(hProcess, 0))
				{
					if (FUNC3(hInst, IDS_KILL_PROCESS_ERR1, lpStr, 80))
					{
						FUNC7(hStdout, lpEmpty, FUNC9(lpEmpty), pos, &numChars);
						FUNC7(hStdout, lpStr, FUNC9(lpStr), pos, &numChars);
					}
					FUNC5(1000);
				}

				FUNC0(hProcess);
			}
			else
			{
				if (FUNC3(hInst, IDS_KILL_PROCESS_ERR2, lpStr, 80))
				{
					FUNC7(hStdout, lpEmpty, FUNC9(lpEmpty), pos, &numChars);
					FUNC8(lpStr, lpStr, pId);
					FUNC7(hStdout, lpStr, FUNC9(lpStr), pos, &numChars);
				}
				FUNC5(1000);
			}
		}

		first = 0;
	}
	else if (key == VK_UP)
	{
		if (selection > 0)
			selection--;
		else if ((selection == 0) && (scrolled > 0))
			scrolled--;
	}
	else if (key == VK_DOWN)
	{
		if ((selection < ProcPerScreen-1) && (selection < ProcessCount-1))
			selection++;
		else if ((selection == ProcPerScreen-1) && (selection+scrolled < ProcessCount-1))
			scrolled++;
	}
	else if (key == VK_PRIOR)
	{
		if (scrolled>ProcPerScreen-1)
			scrolled-=ProcPerScreen-1;
		else
		{
			scrolled=0; //First
			selection=0;
		}
		//selection=0;
	}
	else if (key == VK_NEXT)
	{
		scrolled+=ProcPerScreen-1;
		if (scrolled>ProcessCount-ProcPerScreen)
		{
			scrolled=ProcessCount-ProcPerScreen; //End
			selection=ProcPerScreen-1;
		}

		//selection=ProcPerScreen-1;
		if (ProcessCount<=ProcPerScreen) //If there are less process than fits on the screen
		{
			scrolled=0;
			selection=(ProcessCount%ProcPerScreen)-1;
		}
	}
	else if  (key == VK_HOME)
	{
		selection=0;
		scrolled=0;
	}
	else if  (key == VK_END)
	{
		selection=ProcPerScreen-1;
		scrolled=ProcessCount-ProcPerScreen;
		if (ProcessCount<=ProcPerScreen) //If there are less process than fits on the screen
		{
			scrolled=0;
			selection=(ProcessCount%ProcPerScreen)-1;
		}
	}
	return FALSE;
}