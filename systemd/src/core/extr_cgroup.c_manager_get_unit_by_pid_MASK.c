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
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/ **** Unit ;
struct TYPE_5__ {int /*<<< orphan*/  watch_pids; int /*<<< orphan*/  units; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPECIAL_INIT_SCOPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ ***** FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ***** FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

Unit *FUNC6(Manager *m, pid_t pid) {
        Unit *u, **array;

        FUNC1(m);

        /* Note that a process might be owned by multiple units, we return only one here, which is good enough for most
         * cases, though not strictly correct. We prefer the one reported by cgroup membership, as that's the most
         * relevant one as children of the process will be assigned to that one, too, before all else. */

        if (!FUNC5(pid))
                return NULL;

        if (pid == FUNC2())
                return FUNC3(m->units, SPECIAL_INIT_SCOPE);

        u = FUNC4(m, pid);
        if (u)
                return u;

        u = FUNC3(m->watch_pids, FUNC0(pid));
        if (u)
                return u;

        array = FUNC3(m->watch_pids, FUNC0(-pid));
        if (array)
                return array[0];

        return NULL;
}