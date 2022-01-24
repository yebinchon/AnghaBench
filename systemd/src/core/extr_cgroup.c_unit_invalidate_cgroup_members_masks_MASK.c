#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int cgroup_members_mask_valid; int /*<<< orphan*/  slice; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(Unit *u) {
        FUNC2(u);

        /* Recurse invalidate the member masks cache all the way up the tree */
        u->cgroup_members_mask_valid = false;

        if (FUNC1(u->slice))
                FUNC3(FUNC0(u->slice));
}