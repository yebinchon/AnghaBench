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
struct TYPE_5__ {int /*<<< orphan*/  cgroup_path; int /*<<< orphan*/  invocation_id; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SD_ID128_STRING_MAX ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC6(Unit *u) {
        char ids[SD_ID128_STRING_MAX];
        int r;

        FUNC1(u);

        if (!FUNC0(u->manager))
                return;

        if (FUNC4(u->invocation_id))
                return;

        r = FUNC2(SYSTEMD_CGROUP_CONTROLLER, u->cgroup_path,
                         "trusted.invocation_id",
                         FUNC5(u->invocation_id, ids), 32,
                         0);
        if (r < 0)
                FUNC3(u, r, "Failed to set invocation ID on control group %s, ignoring: %m", u->cgroup_path);
}