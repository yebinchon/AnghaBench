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
struct utmpx {int ut_pid; int /*<<< orphan*/  ut_user; int /*<<< orphan*/  ut_type; } ;

/* Variables and functions */
 int ESRCH ; 
 int /*<<< orphan*/  RUN_LVL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct utmpx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct utmpx*) ; 

int FUNC5(int runlevel, int previous) {
        struct utmpx store = {};
        int r;

        FUNC0(runlevel > 0);

        if (previous <= 0) {
                /* Find the old runlevel automatically */

                r = FUNC3(&previous, NULL);
                if (r < 0) {
                        if (r != -ESRCH)
                                return r;

                        previous = 0;
                }
        }

        if (previous == runlevel)
                return 0;

        FUNC1(&store, 0);

        store.ut_type = RUN_LVL;
        store.ut_pid = (runlevel & 0xFF) | ((previous & 0xFF) << 8);
        FUNC2(store.ut_user, "runlevel", sizeof(store.ut_user));

        return FUNC4(&store);
}