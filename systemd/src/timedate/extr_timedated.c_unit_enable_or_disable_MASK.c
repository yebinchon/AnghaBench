#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  name; int /*<<< orphan*/  unit_file_state; } ;
typedef  TYPE_1__ sd_bus_error ;
typedef  TYPE_1__ sd_bus ;
typedef  TYPE_1__ UnitStatusInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,char*) ; 
 int FUNC4 (TYPE_1__*,char*,char*,char*,char*,TYPE_1__*,int /*<<< orphan*/ *,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(UnitStatusInfo *u, sd_bus *bus, sd_bus_error *error, bool enable) {
        int r;

        FUNC0(u);
        FUNC0(bus);
        FUNC0(error);

        /* Call context_update_ntp_status() to update UnitStatusInfo before calling this. */

        if (FUNC5(u->unit_file_state, "enabled") == enable) {
                FUNC2(u, "already %sd.", FUNC1(enable));
                return 0;
        }

        FUNC3(u, "%s unit.", enable ? "Enabling" : "Disabling");

        if (enable)
                r = FUNC4(
                                bus,
                                "org.freedesktop.systemd1",
                                "/org/freedesktop/systemd1",
                                "org.freedesktop.systemd1.Manager",
                                "EnableUnitFiles",
                                error,
                                NULL,
                                "asbb", 1,
                                u->name,
                                false, true);
        else
                r = FUNC4(
                                bus,
                                "org.freedesktop.systemd1",
                                "/org/freedesktop/systemd1",
                                "org.freedesktop.systemd1.Manager",
                                "DisableUnitFiles",
                                error,
                                NULL,
                                "asb", 1,
                                u->name,
                                false);
        if (r < 0)
                return r;

        r = FUNC4(
                        bus,
                        "org.freedesktop.systemd1",
                        "/org/freedesktop/systemd1",
                        "org.freedesktop.systemd1.Manager",
                        "Reload",
                        error,
                        NULL,
                        NULL);
        if (r < 0)
                return r;

        return 0;
}