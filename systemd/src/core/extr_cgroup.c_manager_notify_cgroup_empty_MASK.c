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
typedef  int /*<<< orphan*/  Unit ;
typedef  char const Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(Manager *m, const char *cgroup) {
        Unit *u;

        FUNC0(m);
        FUNC0(cgroup);

        /* Called on the legacy hierarchy whenever we get an explicit cgroup notification from the cgroup agent process
         * or from the --system instance */

        FUNC1("Got cgroup empty notification for: %s", cgroup);

        u = FUNC2(m, cgroup);
        if (!u)
                return 0;

        FUNC3(u);
        return 1;
}