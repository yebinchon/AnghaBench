#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  si ;
struct TYPE_7__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_6__ {int cb; int /*<<< orphan*/  wShowWindow; } ;
typedef  TYPE_1__ STARTUPINFO ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  MSG ;
typedef  int /*<<< orphan*/  LPTSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  INFINITE ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PM_REMOVE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QS_ALLEVENTS ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ WAIT_FAILED ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 

void FUNC7(LPTSTR szUninstallString)
{
    STARTUPINFO si;
    PROCESS_INFORMATION pi;
    DWORD dwRet;
    MSG msg;

    FUNC6(&si, sizeof(si));
    si.cb = sizeof(si);
    si.wShowWindow = SW_SHOW;

    if (FUNC1(NULL, szUninstallString, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi))
    {
        FUNC0(pi.hThread);

        for (;;)
        {
            dwRet = FUNC3(1, &pi.hProcess, FALSE, INFINITE, QS_ALLEVENTS);
            if (dwRet == WAIT_OBJECT_0 + 1)
            {
                 while (FUNC4(&msg, NULL, 0, 0, PM_REMOVE))
                 {
                     FUNC5(&msg);
                     FUNC2(&msg);
                 }
            }
            else if (dwRet == WAIT_OBJECT_0 || dwRet == WAIT_FAILED)
                break;
        }
        FUNC0(pi.hProcess);
    }
}