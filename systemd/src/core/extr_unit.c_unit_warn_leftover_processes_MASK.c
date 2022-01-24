#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cgroup_path; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  log_leftover ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3(Unit *u) {
        FUNC0(u);

        (void) FUNC2(u);

        if (!u->cgroup_path)
                return 0;

        return FUNC1(SYSTEMD_CGROUP_CONTROLLER, u->cgroup_path, 0, 0, NULL, log_leftover, u);
}