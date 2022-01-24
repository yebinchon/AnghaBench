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
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NO_SUCH_UNIT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *cgroup;
        Unit *u;
        int r;

        r = FUNC3(message, "s", &cgroup);
        if (r < 0)
                return r;

        u = FUNC0(m, cgroup);
        if (!u)
                return FUNC2(error, BUS_ERROR_NO_SUCH_UNIT, "Control group '%s' is not valid or not managed by this instance", cgroup);

        return FUNC1(u, message, error);
}