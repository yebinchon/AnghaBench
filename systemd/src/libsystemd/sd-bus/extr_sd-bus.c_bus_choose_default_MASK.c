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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * default_starter_bus ; 
 int /*<<< orphan*/ * default_system_bus ; 
 int /*<<< orphan*/ * default_user_bus ; 
 int FUNC2 (int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 

__attribute__((used)) static sd_bus **FUNC7(int (**bus_open)(sd_bus **)) {
        const char *e;

        /* Let's try our best to reuse another cached connection. If
         * the starter bus type is set, connect via our normal
         * connection logic, ignoring $DBUS_STARTER_ADDRESS, so that
         * we can share the connection with the user/system default
         * bus. */

        e = FUNC5("DBUS_STARTER_BUS_TYPE");
        if (e) {
                if (FUNC6(e, "system")) {
                        if (bus_open)
                                *bus_open = sd_bus_open_system;
                        return &default_system_bus;
                } else if (FUNC0(e, "user", "session")) {
                        if (bus_open)
                                *bus_open = sd_bus_open_user;
                        return &default_user_bus;
                }
        }

        /* No type is specified, so we have not other option than to
         * use the starter address if it is set. */
        e = FUNC5("DBUS_STARTER_ADDRESS");
        if (e) {
                if (bus_open)
                        *bus_open = sd_bus_open;
                return &default_starter_bus;
        }

        /* Finally, if nothing is set use the cached connection for
         * the right scope */

        if (FUNC1(0, NULL) >= 0) {
                if (bus_open)
                        *bus_open = sd_bus_open_user;
                return &default_user_bus;
        } else {
                if (bus_open)
                        *bus_open = sd_bus_open_system;
                return &default_system_bus;
        }
}