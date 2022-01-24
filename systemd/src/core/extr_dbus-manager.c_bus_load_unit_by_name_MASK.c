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
typedef  int /*<<< orphan*/ * sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;
typedef  int /*<<< orphan*/ * Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC4(Manager *m, sd_bus_message *message, const char *name, Unit **ret_unit, sd_bus_error *error) {
        FUNC0(m);
        FUNC0(message);
        FUNC0(ret_unit);

        /* Pretty much the same as bus_get_unit_by_name(), but we also load the unit if necessary. */

        if (FUNC2(name))
                return FUNC1(m, message, name, ret_unit, error);

        return FUNC3(m, name, NULL, error, ret_unit);
}