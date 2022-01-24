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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int*,char***,char***,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int* FUNC6 () ; 
 char*** FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(void)
{
    int argc, new_argc, mode;
    char **argv, **new_argv, **envp;
    char tmppath[MAX_PATH], filepath[MAX_PATH];
    FILE *f;

    FUNC5(FUNC0(MAX_PATH, tmppath) != 0, "GetTempPath failed\n");

    mode = 0;
    FUNC1(&argc, &argv, &envp, 0, &mode);
    FUNC5(argc == 4, "argc = %d\n", argc);
    FUNC5(!FUNC10(argv[1], "data"), "argv[1] = %s\n", argv[1]);
    FUNC9(filepath, "%s*\\*", tmppath);
    FUNC5(!FUNC10(argv[2], filepath), "argv[2] = %s\n", argv[2]);
    FUNC9(filepath, "%swine_test/*", tmppath);
    FUNC5(!FUNC10(argv[3], filepath), "argv[3] = %s\n", argv[3]);
    FUNC5(!argv[4], "argv[4] != NULL\n");

    if(&p___p___argc && &p___p___argv) {
        new_argc = *FUNC6();
        new_argv = *FUNC7();
        FUNC5(new_argc == 4, "*__p___argc() = %d\n", new_argc);
        FUNC5(new_argv == argv, "*__p___argv() = %p, expected %p\n", new_argv, argv);
    }
    else FUNC8("__p___argc or __p___argv is not available\n");

    mode = 0;
    FUNC1(&argc, &argv, &envp, 1, &mode);
    FUNC5(argc == 5, "argc = %d\n", argc);
    FUNC5(!FUNC10(argv[1], "data"), "argv[1] = %s\n", argv[1]);
    FUNC9(filepath, "%s*\\*", tmppath);
    FUNC5(!FUNC10(argv[2], filepath), "argv[2] = %s\n", argv[2]);
    FUNC9(filepath, "%swine_test/a", tmppath);
    if(argv[3][FUNC11(argv[3])-1] == 'a') {
        FUNC5(!FUNC10(argv[3], filepath), "argv[3] = %s\n", argv[3]);
        FUNC9(filepath, "%swine_test/test", tmppath);
        FUNC5(!FUNC10(argv[4], filepath), "argv[4] = %s\n", argv[4]);
    }else {
        FUNC5(!FUNC10(argv[4], filepath), "argv[4] = %s\n", argv[4]);
        FUNC9(filepath, "%swine_test/test", tmppath);
        FUNC5(!FUNC10(argv[3], filepath), "argv[3] = %s\n", argv[3]);
    }
    FUNC5(!argv[5], "argv[5] != NULL\n");

    if(&p___p___argc && &p___p___argv) {
        new_argc = *FUNC6();
        new_argv = *FUNC7();
        FUNC5(new_argc == argc, "*__p___argc() = %d, expected %d\n", new_argc, argc);
        FUNC5(new_argv == argv, "*__p___argv() = %p, expected %p\n", new_argv, argv);
    }

    FUNC9(filepath, "%swine_test/b", tmppath);
    f = FUNC4(filepath, "w");
    FUNC5(f != NULL, "fopen(%s) failed: %d\n", filepath, errno);
    FUNC3(f);
    mode = 0;
    FUNC1(&new_argc, &new_argv, &envp, 1, &mode);
    FUNC5(new_argc == argc+1, "new_argc = %d, expected %d\n", new_argc, argc+1);
    FUNC2(filepath);
}