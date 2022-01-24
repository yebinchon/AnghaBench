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
typedef  int /*<<< orphan*/  Service ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(Unit *u) {
        Service *s = FUNC0(u);

        FUNC1(s);

        /* Never clean up services that still have a process around, even if the service is formally dead. Note that
         * unit_may_gc() already checked our cgroup for us, we just check our two additional PIDs, too, in case they
         * have moved outside of the cgroup. */

        if (FUNC3(s) > 0 ||
            FUNC2(s) > 0)
                return false;

        return true;
}