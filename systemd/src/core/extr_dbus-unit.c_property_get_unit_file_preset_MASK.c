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
typedef  int /*<<< orphan*/  Unit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Unit *u = userdata;
        int r;

        FUNC0(bus);
        FUNC0(reply);
        FUNC0(u);

        r = FUNC2(u);

        return FUNC1(reply, "s",
                                     r < 0 ? NULL:
                                     r > 0 ? "enabled" : "disabled");
}