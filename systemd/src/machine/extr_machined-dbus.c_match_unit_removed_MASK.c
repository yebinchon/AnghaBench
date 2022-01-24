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
struct TYPE_6__ {int /*<<< orphan*/  machine_units; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;
typedef  int /*<<< orphan*/  Machine ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,char*,char const**,char const**) ; 

int FUNC5(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *path, *unit;
        Manager *m = userdata;
        Machine *machine;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC4(message, "so", &unit, &path);
        if (r < 0) {
                FUNC1(r);
                return 0;
        }

        machine = FUNC2(m->machine_units, unit);
        if (!machine)
                return 0;

        FUNC3(machine);
        return 0;
}