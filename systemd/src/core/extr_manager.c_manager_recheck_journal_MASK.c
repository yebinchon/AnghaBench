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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(Manager *m) {

        FUNC1(m);

        /* Don't bother with this unless we are in the special situation of being PID 1 */
        if (FUNC2() != 1)
                return;

        /* Don't check this while we are reloading, things might still change */
        if (FUNC0(m))
                return;

        /* The journal is fully and entirely up? If so, let's permit logging to it, if that's configured. If the
         * journal is down, don't ever log to it, otherwise we might end up deadlocking ourselves as we might trigger
         * an activation ourselves we can't fulfill. */
        FUNC4(!FUNC5(m));
        FUNC3();
}