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
struct TYPE_5__ {int cb; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char***) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void)
{
    char cmdline[MAX_PATH];
    char path[MAX_PATH];
    char **argv;
    PROCESS_INFORMATION pi;
    STARTUPINFOA si = { 0 };
    BOOL ret;

    FUNC3(NULL, path, MAX_PATH);

    si.cb = sizeof(si);
    FUNC6(&argv);
    FUNC5(cmdline, "\"%s\" %s domain_tests", argv[0], argv[1]);
    ret = FUNC1(argv[0], cmdline, NULL, NULL, FALSE, 0, NULL, NULL, &si, &pi);
    FUNC4(ret, "Failed to spawn child process: %u\n", FUNC2());
    FUNC7(pi.hProcess);
    FUNC0(pi.hThread);
    FUNC0(pi.hProcess);
}