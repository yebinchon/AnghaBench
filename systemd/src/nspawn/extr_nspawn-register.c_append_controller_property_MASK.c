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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char*,char*,char const*) ; 

__attribute__((used)) static int FUNC5(sd_bus *bus, sd_bus_message *m) {
        const char *unique;
        int r;

        FUNC0(bus);
        FUNC0(m);

        r = FUNC3(bus, &unique);
        if (r < 0)
                return FUNC2(r, "Failed to get unique name: %m");

        r = FUNC4(m, "(sv)", "Controller", "s", unique);
        if (r < 0)
                return FUNC1(r);

        return 0;
}