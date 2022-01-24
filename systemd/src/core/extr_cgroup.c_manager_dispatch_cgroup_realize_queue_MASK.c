#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  id; TYPE_2__* in_cgroup_realize_queue; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_10__ {TYPE_1__* cgroup_realize_queue; } ;
typedef  int /*<<< orphan*/  ManagerState ;
typedef  TYPE_2__ Manager ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

unsigned FUNC7(Manager *m) {
        ManagerState state;
        unsigned n = 0;
        Unit *i;
        int r;

        FUNC1(m);

        state = FUNC3(m);

        while ((i = m->cgroup_realize_queue)) {
                FUNC1(i->in_cgroup_realize_queue);

                if (FUNC0(FUNC4(i))) {
                        /* Maybe things changed, and the unit is not actually active anymore? */
                        FUNC6(i);
                        continue;
                }

                r = FUNC5(i, state);
                if (r < 0)
                        FUNC2(r, "Failed to realize cgroups for queued unit %s, ignoring: %m", i->id);

                n++;
        }

        return n;
}