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
struct TYPE_4__ {char const* cgroup_path; int /*<<< orphan*/  slice; int /*<<< orphan*/  cgroup_realized_mask; scalar_t__ cgroup_realized; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  CGroupMask ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 

const char *FUNC2(Unit *u, CGroupMask mask) {

        /* Returns the realized cgroup path of the specified unit where all specified controllers are available. */

        while (u) {

                if (u->cgroup_path &&
                    u->cgroup_realized &&
                    FUNC0(u->cgroup_realized_mask, mask))
                        return u->cgroup_path;

                u = FUNC1(u->slice);
        }

        return NULL;
}