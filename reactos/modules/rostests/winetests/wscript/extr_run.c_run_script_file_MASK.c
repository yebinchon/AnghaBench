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
typedef  int /*<<< orphan*/  si ;
struct TYPE_6__ {int /*<<< orphan*/  hProcess; int /*<<< orphan*/  hThread; } ;
struct TYPE_5__ {int member_0; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  reportSuccess ; 
 char const* script_name ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  wscript_process ; 

__attribute__((used)) static void FUNC11(const char *file_name, DWORD expected_exit_code)
{
    char command[MAX_PATH];
    STARTUPINFOA si = {sizeof(si)};
    PROCESS_INFORMATION pi;
    DWORD exit_code;
    BOOL bres;

    script_name = file_name;
    FUNC9(command, "wscript.exe %s arg1 2 ar3", file_name);

    FUNC6(reportSuccess);

    bres = FUNC3(NULL, command, NULL, NULL, TRUE, 0, NULL, NULL, &si, &pi);
    if(!bres) {
        FUNC10("script.exe is not available\n");
        FUNC1(reportSuccess);
        return;
    }

    wscript_process = pi.hProcess;
    FUNC7(pi.hProcess, INFINITE);

    bres = FUNC4(pi.hProcess, &exit_code);
    FUNC8(bres, "GetExitCodeProcess failed: %u\n", FUNC5());
    FUNC8(exit_code == expected_exit_code, "exit_code = %u, expected %u\n", exit_code, expected_exit_code);

    FUNC2(pi.hThread);
    FUNC2(pi.hProcess);

    FUNC0(reportSuccess);
}