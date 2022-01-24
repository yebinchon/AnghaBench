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
struct TYPE_10__ {scalar_t__ cgroup_invalidated_mask; int /*<<< orphan*/  slice; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  ManagerState ;
typedef  int /*<<< orphan*/  CGroupMask ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC10(Unit *u, ManagerState state) {
        CGroupMask target_mask, enable_mask;
        int r;

        FUNC2(u);

        FUNC9(u);

        target_mask = FUNC5(u);
        enable_mask = FUNC4(u);

        if (FUNC6(u, target_mask, enable_mask))
                return 0;

        /* Disable controllers below us, if there are any */
        r = FUNC7(u, state);
        if (r < 0)
                return r;

        /* Enable controllers above us, if there are any */
        if (FUNC1(u->slice)) {
                r = FUNC8(FUNC0(u->slice), state);
                if (r < 0)
                        return r;
        }

        /* Now actually deal with the cgroup we were trying to realise and set attributes */
        r = FUNC3(u, target_mask, enable_mask, state);
        if (r < 0)
                return r;

        /* Now, reset the invalidation mask */
        u->cgroup_invalidated_mask = 0;
        return 0;
}