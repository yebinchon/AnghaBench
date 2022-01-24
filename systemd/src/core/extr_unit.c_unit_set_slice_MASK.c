#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ type; int /*<<< orphan*/  slice; scalar_t__ cgroup_realized; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 int /*<<< orphan*/  SPECIAL_INIT_SCOPE ; 
 int /*<<< orphan*/  SPECIAL_ROOT_SLICE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ UNIT_INACTIVE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNIT_SLICE ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 

int FUNC7(Unit *u, Unit *slice) {
        FUNC3(u);
        FUNC3(slice);

        /* Sets the unit slice if it has not been set before. Is extra
         * careful, to only allow this for units that actually have a
         * cgroup context. Also, we don't allow to set this for slices
         * (since the parent slice is derived from the name). Make
         * sure the unit we set is actually a slice. */

        if (!FUNC1(u))
                return -EOPNOTSUPP;

        if (u->type == UNIT_SLICE)
                return -EINVAL;

        if (FUNC4(u) != UNIT_INACTIVE)
                return -EBUSY;

        if (slice->type != UNIT_SLICE)
                return -EINVAL;

        if (FUNC5(u, SPECIAL_INIT_SCOPE) &&
            !FUNC5(slice, SPECIAL_ROOT_SLICE))
                return -EPERM;

        if (FUNC0(u->slice) == slice)
                return 0;

        /* Disallow slice changes if @u is already bound to cgroups */
        if (FUNC2(u->slice) && u->cgroup_realized)
                return -EBUSY;

        FUNC6(&u->slice, u, slice);
        return 1;
}