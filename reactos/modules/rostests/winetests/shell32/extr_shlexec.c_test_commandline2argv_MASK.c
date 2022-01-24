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
struct TYPE_4__ {scalar_t__ cmd; } ;
typedef  TYPE_1__ cmdline_tests_t ;
typedef  char WCHAR ;
typedef  char* LPWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** FUNC1 (char const*,int*) ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 TYPE_1__* cmdline_tests ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const*) ; 
 char** FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    static const WCHAR exeW[] = {'e','x','e',0};
    const cmdline_tests_t* test;
    WCHAR strW[MAX_PATH];
    LPWSTR *args;
    int numargs;
    DWORD le;

    test = cmdline_tests;
    while (test->cmd)
    {
        if (!FUNC9(test))
            return;
        test++;
    }

    FUNC5(0xdeadbeef);
    args = FUNC1(exeW, NULL);
    le = FUNC2();
    FUNC8(args == NULL && le == ERROR_INVALID_PARAMETER, "expected NULL with ERROR_INVALID_PARAMETER got %p with %u\n", args, le);

    FUNC5(0xdeadbeef);
    args = FUNC1(NULL, NULL);
    le = FUNC2();
    FUNC8(args == NULL && le == ERROR_INVALID_PARAMETER, "expected NULL with ERROR_INVALID_PARAMETER got %p with %u\n", args, le);

    *strW = 0;
    args = FUNC1(strW, &numargs);
    FUNC8(numargs == 1 || FUNC6(numargs > 1), "expected 1 args, got %d\n", numargs);
    FUNC8(!args || (!args[numargs] || FUNC6(args[numargs] != NULL) /* before Vista */),
       "expected NULL-terminated list of commandline arguments\n");
    if (numargs == 1)
    {
        FUNC3(NULL, strW, FUNC0(strW));
        FUNC8(!FUNC7(args[0], strW), "wrong path to the current executable: %s instead of %s\n", FUNC10(args[0]), FUNC10(strW));
    }
    if (args) FUNC4(args);
}