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
typedef  int /*<<< orphan*/  WaitForItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        WaitForItem *item = userdata;
        const char *interface;
        int r;

        FUNC0(item);

        r = FUNC2(m, "s", &interface);
        if (r < 0) {
                FUNC1(r, "Failed to parse PropertiesChanged signal: %m");
                return 0;
        }

        if (!FUNC3(interface, "org.freedesktop.systemd1.Unit"))
                return 0;

        r = FUNC4(item, m);
        if (r < 0)
                FUNC1(r, "Failed to process PropertiesChanged signal: %m");

        return 0;
}