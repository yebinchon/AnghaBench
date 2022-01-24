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
typedef  int /*<<< orphan*/  startup ;
struct TYPE_7__ {int /*<<< orphan*/  hProcess; } ;
struct TYPE_6__ {int cb; char* lpDesktop; int /*<<< orphan*/  wShowWindow; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  STARTF_USESHOWWINDOW ; 
 int STATUS_DLL_INIT_FAILED ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char*,int) ; 

void FUNC8(int i, char *argv0, char* Desktop, DWORD expectedExitCode)
{
    STARTUPINFOA startup;
    char path[MAX_PATH];
    BOOL ret;
    DWORD ExitCode;
    PROCESS_INFORMATION pi;

    FUNC5( &startup, 0, sizeof(startup) );
    startup.cb = sizeof(startup);
    startup.dwFlags = STARTF_USESHOWWINDOW;
    startup.wShowWindow = SW_SHOWNORMAL;
    startup.lpDesktop = Desktop;

    FUNC7( path, "%s desktop %u", argv0, i );
    ret = FUNC1( NULL, path, NULL, NULL, TRUE, 0, NULL, NULL, &startup, &pi );
    FUNC6( ret, "%d: CreateProcess '%s' failed err %d.\n", i, path, (int)FUNC3() );
    FUNC4 (pi.hProcess, INFINITE);
    ret = FUNC2(pi.hProcess, &ExitCode);
    FUNC6(ret > 0 , "%d: GetExitCodeProcess failed\n", i);

    /* the exit code varies from version to version */
    /* xp returns error 128 and 7 returns STATUS_DLL_INIT_FAILED */
    if (ExitCode == 128) ExitCode = STATUS_DLL_INIT_FAILED;

    FUNC6(ExitCode == expectedExitCode, "%d: expected error 0x%x in child process got 0x%x\n", i, (int)expectedExitCode, (int)ExitCode);

    FUNC0(pi.hProcess);
}