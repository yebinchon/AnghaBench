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
 scalar_t__ CGROUP_UNIFIED_ALL ; 
 scalar_t__ CGROUP_UNIFIED_NONE ; 
 scalar_t__ CGROUP_UNIFIED_SYSTEMD ; 
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 scalar_t__ arg_unified_cgroup_hierarchy ; 
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (int,char*) ; 
 int FUNC4 (char const*,int) ; 

__attribute__((used)) static int FUNC5(const char *directory) {
        int r;

        /* Let's inherit the mode to use from the host system, but let's take into consideration what systemd
         * in the image actually supports. */
        r = FUNC0();
        if (r < 0)
                return FUNC3(r, "Failed to determine whether we are in all unified mode.");
        if (r > 0) {
                /* Unified cgroup hierarchy support was added in 230. Unfortunately the detection
                 * routine only detects 231, so we'll have a false negative here for 230. */
                r = FUNC4(directory, 230);
                if (r < 0)
                        return FUNC3(r, "Failed to determine systemd version in container: %m");
                if (r > 0)
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_ALL;
                else
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;
        } else if (FUNC1(SYSTEMD_CGROUP_CONTROLLER) > 0) {
                /* Mixed cgroup hierarchy support was added in 233 */
                r = FUNC4(directory, 233);
                if (r < 0)
                        return FUNC3(r, "Failed to determine systemd version in container: %m");
                if (r > 0)
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_SYSTEMD;
                else
                        arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;
        } else
                arg_unified_cgroup_hierarchy = CGROUP_UNIFIED_NONE;

        FUNC2("Using %s hierarchy for container.",
                  arg_unified_cgroup_hierarchy == CGROUP_UNIFIED_NONE ? "legacy" :
                  arg_unified_cgroup_hierarchy == CGROUP_UNIFIED_SYSTEMD ? "hybrid" : "unified");

        return 0;
}