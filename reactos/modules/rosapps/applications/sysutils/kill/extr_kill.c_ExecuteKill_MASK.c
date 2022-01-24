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
typedef  int /*<<< orphan*/ * HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  PROCESS_TERMINATE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(char * lpPid)
{
	HANDLE	hProcess;
	DWORD	dwProcessId;

	dwProcessId = (DWORD) FUNC3(lpPid);
		FUNC4( stderr, "Killing PID %ld...\n",dwProcessId);
	hProcess = FUNC1(
			PROCESS_TERMINATE,
			FALSE,
			dwProcessId
			);
	if (NULL == hProcess)
	{
		FUNC4( stderr, "Could not open the process with PID = %ld\n", dwProcessId);
		return 0;
	}
	if (FALSE == FUNC2(
			hProcess,
			0
			)
	) {
		FUNC4( stderr, "Could not terminate the process with PID = %ld\n",	dwProcessId);
		return 0;
	}
	FUNC0(hProcess);
	return 0;
}