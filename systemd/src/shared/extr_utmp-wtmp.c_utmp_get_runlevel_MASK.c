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
struct utmpx {int ut_pid; int /*<<< orphan*/  ut_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  RUN_LVL ; 
 int /*<<< orphan*/  _PATH_UTMPX ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int errno ; 
 char* FUNC2 (char*) ; 
 struct utmpx* FUNC3 (struct utmpx*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(int *runlevel, int *previous) {
        struct utmpx *found, lookup = { .ut_type = RUN_LVL };
        int r;
        const char *e;

        FUNC0(runlevel);

        /* If these values are set in the environment this takes
         * precedence. Presumably, sysvinit does this to work around a
         * race condition that would otherwise exist where we'd always
         * go to disk and hence might read runlevel data that might be
         * very new and does not apply to the current script being
         * executed. */

        e = FUNC2("RUNLEVEL");
        if (e && e[0] > 0) {
                *runlevel = e[0];

                if (previous) {
                        /* $PREVLEVEL seems to be an Upstart thing */

                        e = FUNC2("PREVLEVEL");
                        if (e && e[0] > 0)
                                *previous = e[0];
                        else
                                *previous = 0;
                }

                return 0;
        }

        if (FUNC5(_PATH_UTMPX) < 0)
                return -errno;

        FUNC4();

        found = FUNC3(&lookup);
        if (!found)
                r = -errno;
        else {
                int a, b;

                a = found->ut_pid & 0xFF;
                b = (found->ut_pid >> 8) & 0xFF;

                *runlevel = a;
                if (previous)
                        *previous = b;

                r = 0;
        }

        FUNC1();

        return r;
}