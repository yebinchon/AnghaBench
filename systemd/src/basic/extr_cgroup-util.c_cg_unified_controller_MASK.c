#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int CGROUP_UNIFIED_ALL ; 
 int CGROUP_UNIFIED_NONE ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 int FUNC0 (int) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ ) ; 

int FUNC2(const char *controller) {
        int r;

        r = FUNC0(false);
        if (r < 0)
                return r;

        if (r == CGROUP_UNIFIED_NONE)
                return false;

        if (r >= CGROUP_UNIFIED_ALL)
                return true;

        return FUNC1(controller, SYSTEMD_CGROUP_CONTROLLER);
}