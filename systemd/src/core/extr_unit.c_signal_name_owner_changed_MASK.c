#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_2__ {int /*<<< orphan*/  (* bus_name_owner_change ) (int /*<<< orphan*/ *,char const*,char const*) ;} ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,char const**,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static int FUNC6(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *name, *old_owner, *new_owner;
        Unit *u = userdata;
        int r;

        FUNC1(message);
        FUNC1(u);

        r = FUNC4(message, "sss", &name, &old_owner, &new_owner);
        if (r < 0) {
                FUNC2(r);
                return 0;
        }

        old_owner = FUNC3(old_owner);
        new_owner = FUNC3(new_owner);

        if (FUNC0(u)->bus_name_owner_change)
                FUNC0(u)->bus_name_owner_change(u, old_owner, new_owner);

        return 0;
}