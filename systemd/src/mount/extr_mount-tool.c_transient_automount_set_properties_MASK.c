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
 int /*<<< orphan*/  UNIT_AUTOMOUNT ; 
 scalar_t__ USEC_INFINITY ; 
 int /*<<< orphan*/  arg_automount_property ; 
 scalar_t__ arg_timeout_idle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(sd_bus_message *m) {
        int r;

        FUNC0(m);

        r = FUNC2(m, UNIT_AUTOMOUNT, arg_automount_property);
        if (r < 0)
                return r;

        if (arg_timeout_idle != USEC_INFINITY) {
                r = FUNC1(m, "(sv)", "TimeoutIdleUSec", "t", arg_timeout_idle);
                if (r < 0)
                        return r;
        }

        return 0;
}