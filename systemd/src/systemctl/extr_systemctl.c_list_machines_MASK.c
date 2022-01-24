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
struct machine_info {int dummy; } ;
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_MANAGER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  arg_pager_flags ; 
 int /*<<< orphan*/  compare_machine_info ; 
 int /*<<< orphan*/  FUNC1 (struct machine_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,struct machine_info**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct machine_info*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct machine_info*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(int argc, char *argv[], void *userdata) {
        struct machine_info *machine_infos = NULL;
        sd_bus *bus;
        int r;

        r = FUNC0(BUS_MANAGER, &bus);
        if (r < 0)
                return r;

        r = FUNC2(bus, &machine_infos, FUNC5(argv, 1));
        if (r < 0)
                return r;

        (void) FUNC4(arg_pager_flags);

        FUNC6(machine_infos, r, compare_machine_info);
        FUNC3(machine_infos, r);
        FUNC1(machine_infos, r);

        return 0;
}