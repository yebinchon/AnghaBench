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
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 

void FUNC8(Manager *m) {
        FUNC2(m);

        /* Connects to the bus if the dbus service and socket are running. If we are running in user mode this is all
         * it does. In system mode we'll also connect to the system bus (which will most likely just reuse the
         * connection of the API bus). That's because the system bus after all runs as service of the system instance,
         * while in the user instance we can assume it's already there. */

        if (FUNC0(m))
                return; /* don't check while we are reloading… */

        if (FUNC7(m, false)) {
                (void) FUNC5(m);

                if (FUNC1(m))
                        (void) FUNC6(m);
        } else {
                (void) FUNC3(m);

                if (FUNC1(m))
                        (void) FUNC4(m);
        }
}