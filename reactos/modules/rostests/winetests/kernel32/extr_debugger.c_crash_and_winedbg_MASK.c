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
struct TYPE_7__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_6__ {int cb; int /*<<< orphan*/  wShowWindow; int /*<<< orphan*/  dwFlags; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  REG_SZ ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  STARTF_USESHOWWINDOW ; 
 scalar_t__ STATUS_ACCESS_VIOLATION ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,char const*) ; 
 scalar_t__ FUNC12 (char const*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void FUNC14(HKEY hkey, const char* argv0)
{
    BOOL bRet;
    DWORD ret;
    char* cmd;
    PROCESS_INFORMATION	info;
    STARTUPINFOA startup;
    DWORD exit_code;

    ret=FUNC7(hkey, "auto", 0, REG_SZ, (BYTE*)"1", 2);
    FUNC10(ret == ERROR_SUCCESS, "unable to set AeDebug/auto: ret=%d\n", ret);

    cmd=FUNC5(FUNC4(), 0, FUNC12(argv0)+15+1);
    FUNC11(cmd, "%s debugger crash", argv0);

    FUNC9(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);
    startup.dwFlags = STARTF_USESHOWWINDOW;
    startup.wShowWindow = SW_SHOWNORMAL;
    ret=FUNC1(NULL, cmd, NULL, NULL, FALSE, 0, NULL, NULL, &startup, &info);
    FUNC10(ret, "CreateProcess: err=%d\n", FUNC3());
    FUNC6(FUNC4(), 0, cmd);
    FUNC0(info.hThread);

    FUNC13("waiting for child exit...\n");
    FUNC10(FUNC8(info.hProcess, 60000) == WAIT_OBJECT_0, "Timed out waiting for the child to crash\n");
    bRet = FUNC2(info.hProcess, &exit_code);
    FUNC10(bRet, "GetExitCodeProcess failed: err=%d\n", FUNC3());
    FUNC10(exit_code == STATUS_ACCESS_VIOLATION, "exit code = %08x\n", exit_code);
    FUNC0(info.hProcess);
}