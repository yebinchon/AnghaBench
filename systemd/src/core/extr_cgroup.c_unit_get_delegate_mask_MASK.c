#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_4__ {int /*<<< orphan*/  delegate_controllers; } ;
typedef  int /*<<< orphan*/  ExecContext ;
typedef  int /*<<< orphan*/  CGroupMask ;
typedef  TYPE_1__ CGroupContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 

CGroupMask FUNC7(Unit *u) {
        CGroupContext *c;

        /* If delegation is turned on, then turn on selected controllers, unless we are on the legacy hierarchy and the
         * process we fork into is known to drop privileges, and hence shouldn't get access to the controllers.
         *
         * Note that on the unified hierarchy it is safe to delegate controllers to unprivileged services. */

        if (!FUNC4(u))
                return 0;

        if (FUNC2() <= 0) {
                ExecContext *e;

                e = FUNC6(u);
                if (e && !FUNC3(e))
                        return 0;
        }

        FUNC1(c = FUNC5(u));
        return FUNC0(c->delegate_controllers);
}