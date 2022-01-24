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

/* Variables and functions */
 int ENOTTY ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(const char *path) {
        int r;

        r = FUNC0("/var/lib/machines", 0, true);
        if (r == -ENOTTY)  {
                FUNC2(r, "Failed to set up default quota hierarchy for /var/lib/machines, as directory is not on btrfs or not a subvolume. Ignoring.");
                return 0;
        }
        if (r < 0)
                return FUNC3(r, "Failed to set up default quota hierarchy for /var/lib/machines: %m");
        if (r > 0)
                FUNC4("Set up default quota hierarchy for /var/lib/machines.");

        r = FUNC0(path, 0, true);
        if (r == -ENOTTY) {
                FUNC2(r, "Failed to set up quota hierarchy for %s, as directory is not on btrfs or not a subvolume. Ignoring.", path);
                return 0;
        }
        if (r < 0)
                return FUNC3(r, "Failed to set up default quota hierarchy for %s: %m", path);
        if (r > 0)
                FUNC1("Set up default quota hierarchy for %s.", path);

        return 0;
}