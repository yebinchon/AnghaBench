#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_5__ {int member_0; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NEW_CONSOLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int WAIT_OBJECT_0 ; 
 int FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*) ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static DWORD FUNC10(const char* cmd)
{
    STARTUPINFOA si = {sizeof(STARTUPINFOA)};
    PROCESS_INFORMATION pi;
    char* wcmd;
    DWORD rc;

    /* Create a writable copy for CreateProcessA() */
    wcmd = FUNC4(FUNC3(), 0, FUNC9(cmd) + 1);
    FUNC8(wcmd, cmd);

    /* On Windows 2003 and older, xcopy.exe fails if stdin is not a console
     * handle, even with '/I /Y' options.
     */
    rc = FUNC1(NULL, wcmd, NULL, NULL, FALSE, CREATE_NEW_CONSOLE, NULL, NULL, &si, &pi);
    FUNC5(FUNC3(), 0, wcmd);
    if (!rc)
        return 260;

    rc = FUNC7(pi.hProcess, 5000);
    if (rc == WAIT_OBJECT_0)
        FUNC2(pi.hProcess, &rc);
    else
        FUNC6(pi.hProcess, 1);
    FUNC0(pi.hThread);
    FUNC0(pi.hProcess);

    return rc;
}