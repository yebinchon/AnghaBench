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
typedef  int /*<<< orphan*/  sd_journal ;
typedef  int /*<<< orphan*/  sd_id128_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int,char*,...) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

int FUNC8(sd_journal *j, const char *machine) {
        char match[9+32+1] = "_BOOT_ID=";
        sd_id128_t boot_id;
        int r;

        FUNC0(j);

        if (machine) {
                r = FUNC1(machine, &boot_id);
                if (r < 0)
                        return FUNC2(r, "Failed to get boot id of container %s: %m", machine);
        } else {
                r = FUNC3(&boot_id);
                if (r < 0)
                        return FUNC2(r, "Failed to get boot id: %m");
        }

        FUNC4(boot_id, match + 9);
        r = FUNC6(j, match, FUNC7(match));
        if (r < 0)
                return FUNC2(r, "Failed to add match: %m");

        r = FUNC5(j);
        if (r < 0)
                return FUNC2(r, "Failed to add conjunction: %m");

        return 0;
}