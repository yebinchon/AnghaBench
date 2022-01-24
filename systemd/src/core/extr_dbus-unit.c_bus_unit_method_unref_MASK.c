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

/* Variables and functions */
 int /*<<< orphan*/  BUS_ERROR_NOT_REFERENCED ; 
 int EUNATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Unit *u = userdata;
        int r;

        FUNC0(message);
        FUNC0(u);

        r = FUNC1(u, message);
        if (r == -EUNATCH)
                return FUNC2(error, BUS_ERROR_NOT_REFERENCED, "Unit has not been referenced yet.");
        if (r < 0)
                return r;

        return FUNC3(message, NULL);
}