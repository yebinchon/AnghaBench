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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  sd_bus ;
typedef  int CGroupMask ;
typedef  scalar_t__ CGroupController ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ _CGROUP_CONTROLLER_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char,char*) ; 

__attribute__((used)) static int FUNC6(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        CGroupMask *mask = userdata;
        CGroupController ctrl;
        int r;

        FUNC1(bus);
        FUNC1(reply);

        r = FUNC5(reply, 'a', "s");
        if (r < 0)
                return r;

        for (ctrl = 0; ctrl < _CGROUP_CONTROLLER_MAX; ctrl++) {
                if ((*mask & FUNC0(ctrl)) == 0)
                        continue;

                r = FUNC3(reply, "s", FUNC2(ctrl));
                if (r < 0)
                        return r;
        }

        return FUNC4(reply);
}