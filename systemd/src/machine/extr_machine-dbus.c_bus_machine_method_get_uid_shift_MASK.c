#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uid_t ;
struct TYPE_7__ {scalar_t__ class; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Machine ;

/* Variables and functions */
 int ENXIO ; 
 scalar_t__ MACHINE_CONTAINER ; 
 scalar_t__ MACHINE_HOST ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 

int FUNC5(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Machine *m = userdata;
        uid_t shift = 0;
        int r;

        FUNC1(message);
        FUNC1(m);

        /* You wonder why this is a method and not a property? Well, properties are not supposed to return errors, but
         * we kinda have to for this. */

        if (m->class == MACHINE_HOST)
                return FUNC4(message, "u", FUNC0(0));

        if (m->class != MACHINE_CONTAINER)
                return FUNC3(error, SD_BUS_ERROR_NOT_SUPPORTED, "UID/GID shift may only be determined for container machines.");

        r = FUNC2(m, &shift);
        if (r == -ENXIO)
                return FUNC3(error, SD_BUS_ERROR_NOT_SUPPORTED, "Machine %s uses a complex UID/GID mapping, cannot determine shift", m->name);
        if (r < 0)
                return r;

        return FUNC4(message, "u", (uint32_t) shift);
}