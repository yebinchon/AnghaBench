#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_4__ {scalar_t__ message; } ;
typedef  TYPE_1__ MSG ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  ERROR_CANCELLED ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ INFINITE ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_ALLINPUT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ WM_CLOSE ; 
 scalar_t__ WM_QUIT ; 

DWORD FUNC5(HANDLE hHandle, DWORD dwMilliseconds)
{
	uint64_t CurTime, EndTime = FUNC1() + dwMilliseconds;
	DWORD res;
	MSG msg;

	do {
		// Read all of the messages in this next loop, removing each message as we read it.
		while (FUNC3(&msg, NULL, 0, 0, PM_REMOVE)) {
			if ((msg.message == WM_QUIT) || (msg.message == WM_CLOSE)) {
				FUNC4(ERROR_CANCELLED);
				return WAIT_FAILED;
			} else {
				FUNC0(&msg);
			}
		}

		// Wait for any message sent or posted to this queue or for the handle to signaled.
		res = FUNC2(1, &hHandle, FALSE, dwMilliseconds, QS_ALLINPUT);

		if (dwMilliseconds != INFINITE) {
			CurTime = FUNC1();
			// Account for the case where we may reach the timeout condition while
			// processing timestamps
			if (CurTime < EndTime)
				dwMilliseconds = (DWORD) (EndTime - CurTime);
			else
				res = WAIT_TIMEOUT;
		}
	} while (res == (WAIT_OBJECT_0 + 1));

	return res;
}