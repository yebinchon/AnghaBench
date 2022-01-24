#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int cgroup_realized_mask; int cgroup_enabled_mask; int /*<<< orphan*/  slice; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  ManagerState ;
typedef  int CGroupMask ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int,int) ; 

__attribute__((used)) static int FUNC7(Unit *u, ManagerState state) {
        CGroupMask target_mask, enable_mask, new_target_mask, new_enable_mask;
        int r;

        FUNC2(u);

        /* First go deal with this unit's parent, or we won't be able to enable
         * any new controllers at this layer. */
        if (FUNC1(u->slice)) {
                r = FUNC7(FUNC0(u->slice), state);
                if (r < 0)
                        return r;
        }

        target_mask = FUNC5(u);
        enable_mask = FUNC4(u);

        /* We can only enable in this direction, don't try to disable anything.
         */
        if (FUNC6(u, target_mask, enable_mask))
                return 0;

        new_target_mask = u->cgroup_realized_mask | target_mask;
        new_enable_mask = u->cgroup_enabled_mask | enable_mask;

        return FUNC3(u, new_target_mask, new_enable_mask, state);
}