#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ cgroup_path; TYPE_1__* manager; } ;
typedef  TYPE_2__ pid_t ;
typedef  TYPE_2__ Unit ;
struct TYPE_10__ {int /*<<< orphan*/  cgroup_supported; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_CGROUP ; 
 int /*<<< orphan*/  FORK_REOPEN_LOG ; 
 int /*<<< orphan*/  PR_SET_PDEATHSIG ; 
 int /*<<< orphan*/  SIGNALS_CRASH_HANDLER ; 
 int /*<<< orphan*/  SIGNALS_IGNORE ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

int FUNC9(Unit *u, const char *name, pid_t *ret) {
        int r;

        FUNC1(u);
        FUNC1(ret);

        /* Forks off a helper process and makes sure it is a member of the unit's cgroup. Returns == 0 in the child,
         * and > 0 in the parent. The pid parameter is always filled in with the child's PID. */

        (void) FUNC8(u);

        r = FUNC7(name, FORK_REOPEN_LOG, ret);
        if (r != 0)
                return r;

        (void) FUNC3(SIGNALS_CRASH_HANDLER, SIGNALS_IGNORE, -1);
        (void) FUNC4(SIGPIPE, -1);

        (void) FUNC6(PR_SET_PDEATHSIG, SIGTERM);

        if (u->cgroup_path) {
                r = FUNC2(u->manager->cgroup_supported, u->cgroup_path, 0, NULL, NULL);
                if (r < 0) {
                        FUNC5(u, r, "Failed to join unit cgroup %s: %m", u->cgroup_path);
                        FUNC0(EXIT_CGROUP);
                }
        }

        return 0;
}