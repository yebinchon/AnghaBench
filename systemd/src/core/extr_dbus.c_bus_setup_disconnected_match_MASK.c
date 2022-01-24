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
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  signal_disconnected ; 

__attribute__((used)) static int FUNC3(Manager *m, sd_bus *bus) {
        int r;

        FUNC0(m);
        FUNC0(bus);

        r = FUNC2(
                        bus,
                        NULL,
                        "org.freedesktop.DBus.Local",
                        "/org/freedesktop/DBus/Local",
                        "org.freedesktop.DBus.Local",
                        "Disconnected",
                        signal_disconnected, NULL, m);
        if (r < 0)
                return FUNC1(r, "Failed to request match for Disconnected message: %m");

        return 0;
}