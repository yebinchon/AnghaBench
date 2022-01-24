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
typedef  char wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/ ** FUNC0 () ; 
 char const** FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int*,char***,char***,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

void
FUNC5(const wchar_t* input_args, const wchar_t* arg1, const wchar_t* arg2, const wchar_t* arg3)
{
    int argc = 0, mode = 0;
    int expect_count = arg3 == NULL ? (arg2 == NULL ? 2 : 3) : 4;
    wchar_t** argv, **env;

    /* Remove cached wargv, setup our input as program argument. */
    *FUNC0() = NULL;
    *FUNC1() = input_args;

    /* Process the commandline stored in _wcmdln */
    FUNC2(&argc, &argv, &env, 0, &mode);

    FUNC3(argc == expect_count, "Wrong value for argc, expected: %d, got: %d\n", expect_count, argc);
    if(argc != expect_count)
        return;

    FUNC4(argv[0], L"test.exe");
    FUNC4(argv[1], arg1);
    if (expect_count > 2)
    {
        FUNC4(argv[2], arg2);
        if (expect_count > 3)
            FUNC4(argv[3], arg3);
    }
}