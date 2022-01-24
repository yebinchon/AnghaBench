#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef  TYPE_1__ Unit ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 scalar_t__ UNIT_SCOPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const**) ; 

__attribute__((used)) static int FUNC5(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        Unit *u;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC4(message, "s", &name);
        if (r < 0)
                return r;

        r = FUNC1(m, message, name, &u, error);
        if (r < 0)
                return r;

        if (u->type != UNIT_SCOPE)
                return FUNC3(error, SD_BUS_ERROR_INVALID_ARGS, "Unit '%s' is not a scope unit, refusing.", name);

        return FUNC2(message, u, error);
}