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
typedef  int /*<<< orphan*/  sd_bus ;
typedef  scalar_t__ int32_t ;
struct TYPE_2__ {char const* failed_assert; int failed_assert_trigger; int failed_assert_negate; char const* failed_assert_parameter; } ;
typedef  TYPE_1__ UnitStatusInfo ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_TYPE_ARRAY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char const**,int*,int*,char const**,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        UnitStatusInfo *i = userdata;
        const char *cond, *param;
        int trigger, negate;
        int32_t state;
        int r;

        r = FUNC0(m, SD_BUS_TYPE_ARRAY, "(sbbsi)");
        if (r < 0)
                return r;

        while ((r = FUNC2(m, "(sbbsi)", &cond, &trigger, &negate, &param, &state)) > 0) {
                if (state < 0 && (!trigger || !i->failed_assert)) {
                        i->failed_assert = cond;
                        i->failed_assert_trigger = trigger;
                        i->failed_assert_negate = negate;
                        i->failed_assert_parameter = param;
                }
        }
        if (r < 0)
                return r;

        r = FUNC1(m);
        if (r < 0)
                return r;

        return 0;
}