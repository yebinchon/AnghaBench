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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(void) {
        FUNC0(FUNC1("SYSTEMD_PROC_CMDLINE",
                         "systemd.unified_cgroup_hierarchy", 1) >= 0);
        FUNC2(false);

        FUNC0(FUNC1("SYSTEMD_PROC_CMDLINE",
                         "systemd.unified_cgroup_hierarchy=0", 1) >= 0);
        FUNC2(false);

        FUNC0(FUNC1("SYSTEMD_PROC_CMDLINE",
                         "systemd.unified_cgroup_hierarchy=0 "
                         "systemd.legacy_systemd_cgroup_controller", 1) >= 0);
        FUNC2(false);

        FUNC0(FUNC1("SYSTEMD_PROC_CMDLINE",
                         "systemd.unified_cgroup_hierarchy=0 "
                         "systemd.legacy_systemd_cgroup_controller=0", 1) >= 0);
        FUNC2(false);

        /* cgroup_no_v1=all implies unified cgroup hierarchy, unless otherwise
         * explicitly specified. */
        FUNC0(FUNC1("SYSTEMD_PROC_CMDLINE",
                         "cgroup_no_v1=all", 1) >= 0);
        FUNC2(false);

        FUNC0(FUNC1("SYSTEMD_PROC_CMDLINE",
                         "cgroup_no_v1=all "
                         "systemd.unified_cgroup_hierarchy=0", 1) >= 0);
        FUNC2(false);
}