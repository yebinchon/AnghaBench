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
 int /*<<< orphan*/  HIGH_RLIMIT_NOFILE ; 
 int /*<<< orphan*/  LC_ALL ; 
 char* FUNC0 () ; 
 char* FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int,char**) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int FUNC12(int argc, char *argv[]) {
        int r, units_active;

        FUNC10(LC_ALL, "");
        FUNC6(true);
        FUNC5();
        FUNC4();

        /* The journal merging logic potentially needs a lot of fds. */
        (void) FUNC9(HIGH_RLIMIT_NOFILE);

        r = FUNC7(argc, argv);
        if (r <= 0)
                return r;

        FUNC11();

        units_active = FUNC2(); /* error is treated the same as 0 */

        r = FUNC3(argc, argv);

        if (units_active > 0)
                FUNC8("%s-- Notice: %d systemd-coredump@.service %s, output may be incomplete.%s\n",
                       FUNC0(),
                       units_active, units_active == 1 ? "unit is running" : "units are running",
                       FUNC1());
        return r;
}