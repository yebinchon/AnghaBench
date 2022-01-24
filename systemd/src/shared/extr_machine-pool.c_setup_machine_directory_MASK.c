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
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int FUNC0 (char*,int) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,char*) ; 

int FUNC6(sd_bus_error *error) {
        int r;

        r = FUNC3();
        if (r < 0)
                return FUNC5(error, r, "Failed to determine whether /var/lib/machines is located on btrfs: %m");
        if (r == 0)
                return 0;

        (void) FUNC2("/var/lib/machines");

        r = FUNC0("/var/lib/machines", true);
        if (r < 0)
                FUNC4(r, "Failed to enable quota for /var/lib/machines, ignoring: %m");

        r = FUNC1("/var/lib/machines", 0, true);
        if (r < 0)
                FUNC4(r, "Failed to set up default quota hierarchy for /var/lib/machines, ignoring: %m");

        return 1;
}