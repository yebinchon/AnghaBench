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

/* Variables and functions */
 int /*<<< orphan*/  UNIT_TIMER ; 
 int /*<<< orphan*/  arg_timer_property ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(sd_bus_message *m) {
        int r;

        FUNC0(m);

        r = FUNC3(m, UNIT_TIMER, arg_timer_property);
        if (r < 0)
                return r;

        /* Automatically clean up our transient timers */
        r = FUNC2(m, "(sv)", "RemainAfterElapse", "b", false);
        if (r < 0)
                return FUNC1(r);

        return 0;
}