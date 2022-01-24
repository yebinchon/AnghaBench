#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  cgroup_path; TYPE_6__* manager; int /*<<< orphan*/  prefix; int /*<<< orphan*/  cgroup_supported; int /*<<< orphan*/  confirm_spawn; int /*<<< orphan*/  environment; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_11__ {int /*<<< orphan*/  prefix; int /*<<< orphan*/  cgroup_supported; } ;
typedef  TYPE_1__ ExecParameters ;

/* Variables and functions */
 int EXEC_CGROUP_DELEGATE ; 
 int EXEC_CHOWN_DIRECTORIES ; 
 int EXEC_PASS_LOG_UNIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int FUNC4 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

int FUNC6(Unit *u, ExecParameters *p) {
        int r;

        FUNC2(u);
        FUNC2(p);

        /* Copy parameters from manager */
        r = FUNC4(u->manager, &p->environment);
        if (r < 0)
                return r;

        p->confirm_spawn = FUNC3(u->manager);
        p->cgroup_supported = u->manager->cgroup_supported;
        p->prefix = u->manager->prefix;
        FUNC1(p->flags, EXEC_PASS_LOG_UNIT|EXEC_CHOWN_DIRECTORIES, FUNC0(u->manager));

        /* Copy parameters from unit */
        p->cgroup_path = u->cgroup_path;
        FUNC1(p->flags, EXEC_CGROUP_DELEGATE, FUNC5(u));

        return 0;
}