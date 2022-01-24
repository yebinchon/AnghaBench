#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_5__ {TYPE_1__* job; } ;
typedef  TYPE_2__ Unit ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NO_SUCH_JOB ; 
 scalar_t__ JOB_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static int FUNC5(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *old_name;
        Unit *u;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC4(message, "s", &old_name);
        if (r < 0)
                return r;

        r = FUNC1(m, message, old_name, &u, error);
        if (r < 0)
                return r;
        if (!u->job || u->job->type != JOB_START)
                return FUNC3(error, BUS_ERROR_NO_SUCH_JOB, "No job queued for unit %s", old_name);

        return FUNC2(message, m, JOB_START, false, error);
}