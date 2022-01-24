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

/* Variables and functions */
 int GID_NOBODY ; 
 char* NOBODY_GROUP_NAME ; 
 char* NOBODY_USER_NAME ; 
 char* NOLOGIN ; 
 int TTY_GID ; 
 int UID_NOBODY ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 

int FUNC14(int argc, char *argv[]) {
        FUNC7(0, "root");
        FUNC7(UID_NOBODY, NOBODY_USER_NAME);
        FUNC7(0xFFFF, "65535");
        FUNC7(0xFFFFFFFF, "4294967295");

        FUNC2(0, "root");
        FUNC2(GID_NOBODY, NOBODY_GROUP_NAME);
        FUNC2(TTY_GID, "tty");
        FUNC2(0xFFFF, "65535");
        FUNC2(0xFFFFFFFF, "4294967295");

        FUNC1("root", "root", 0, 0, "/root", "/bin/sh");
        FUNC1("0", "root", 0, 0, "/root", "/bin/sh");
        FUNC1(NOBODY_USER_NAME, NOBODY_USER_NAME, UID_NOBODY, GID_NOBODY, "/", NOLOGIN);
        FUNC1("65534", NOBODY_USER_NAME, UID_NOBODY, GID_NOBODY, "/", NOLOGIN);

        FUNC0("root", "root", 0);
        FUNC0("0", "root", 0);
        FUNC0(NOBODY_GROUP_NAME, NOBODY_GROUP_NAME, GID_NOBODY);
        FUNC0("65534", NOBODY_GROUP_NAME, GID_NOBODY);

        FUNC5();
        FUNC6();

        FUNC11();
        FUNC10();
        FUNC13();
        FUNC12();
        FUNC8();
        FUNC9();

        FUNC4();

        FUNC3();

        return 0;
}