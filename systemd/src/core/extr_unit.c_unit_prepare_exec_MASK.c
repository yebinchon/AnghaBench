#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int reset_accounting; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*) ; 

int FUNC7(Unit *u) {
        int r;

        FUNC0(u);

        /* Load any custom firewall BPF programs here once to test if they are existing and actually loadable.
         * Fail here early since later errors in the call chain unit_realize_cgroup to cgroup_context_apply are ignored. */
        r = FUNC1(u);
        if (r < 0)
                return r;

        /* Prepares everything so that we can fork of a process for this unit */

        (void) FUNC3(u);

        if (u->reset_accounting) {
                (void) FUNC4(u);
                u->reset_accounting = false;
        }

        FUNC2(u);

        r = FUNC6(u);
        if (r < 0)
                return r;

        r = FUNC5(u);
        if (r < 0)
                return r;

        return 0;
}