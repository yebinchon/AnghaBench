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
struct TYPE_6__ {int cb; } ;
typedef  TYPE_1__ STARTUPINFOA ;
typedef  TYPE_2__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int CREATE_DEFAULT_ERROR_MODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int,char*) ; 
 int MAX_PATH ; 
 int NORMAL_PRIORITY_CLASS ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11(char *name)
{
    char cmdline[3*MAX_PATH];
    char tmppath[MAX_PATH], filepath[MAX_PATH];
    STARTUPINFOA startup;
    PROCESS_INFORMATION proc;
    FILE *f;
    int ret;

    FUNC8(FUNC1(MAX_PATH, tmppath) != 0, "GetTempPath failed\n");
    FUNC9(cmdline, "%s data %s*\\* %swine_test/*", name, tmppath, tmppath);

    FUNC9(filepath, "%swine_test", tmppath);
    ret = FUNC2(filepath);
    FUNC8(!ret, "_mkdir failed: %d\n", errno);
    FUNC9(filepath, "%swine_test\\a", tmppath);
    f = FUNC6(filepath, "w");
    FUNC8(f != NULL, "fopen(%s) failed: %d\n", filepath, errno);
    FUNC5(f);
    FUNC9(filepath, "%swine_test\\test", tmppath);
    f = FUNC6(filepath, "w");
    FUNC8(f != NULL, "fopen(%s) failed: %d\n", filepath, errno);
    FUNC5(f);

    FUNC7(&startup, 0, sizeof(startup));
    startup.cb = sizeof(startup);
    FUNC0(NULL, cmdline, NULL, NULL, TRUE, CREATE_DEFAULT_ERROR_MODE|NORMAL_PRIORITY_CLASS, NULL, NULL, &startup, &proc);
    FUNC10(proc.hProcess);

    FUNC4(filepath);
    FUNC9(filepath, "%swine_test\\a", tmppath);
    FUNC4(filepath);
    FUNC9(filepath, "%swine_test", tmppath);
    FUNC3(filepath);
}