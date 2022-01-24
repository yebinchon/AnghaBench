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
 int /*<<< orphan*/  SYSTEMD_CGROUP_CONTROLLER ; 
 char* SYSTEMD_CGROUP_CONTROLLER_HYBRID ; 
 char* SYSTEMD_CGROUP_CONTROLLER_LEGACY ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 () ; 
 char* FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const char *FUNC4(const char *controller) {
        const char *e;

        FUNC0(controller);

        /* Converts a controller name to the directory name below
         * /sys/fs/cgroup/ we want to mount it to. Effectively, this
         * just cuts off the name= prefixed used for named
         * hierarchies, if it is specified. */

        if (FUNC3(controller, SYSTEMD_CGROUP_CONTROLLER)) {
                if (FUNC1() > 0)
                        controller = SYSTEMD_CGROUP_CONTROLLER_HYBRID;
                else
                        controller = SYSTEMD_CGROUP_CONTROLLER_LEGACY;
        }

        e = FUNC2(controller, "name=");
        if (e)
                return e;

        return controller;
}