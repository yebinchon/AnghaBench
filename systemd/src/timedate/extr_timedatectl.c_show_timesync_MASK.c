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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  arg_all ; 
 int /*<<< orphan*/  arg_property ; 
 int /*<<< orphan*/  arg_value ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  print_timesync_property ; 

__attribute__((used)) static int FUNC3(int argc, char **argv, void *userdata) {
        sd_bus *bus = userdata;
        int r;

        FUNC0(bus);

        r = FUNC2(bus,
                                     "org.freedesktop.timesync1",
                                     "/org/freedesktop/timesync1",
                                     print_timesync_property,
                                     arg_property,
                                     arg_value,
                                     arg_all,
                                     NULL);
        if (r < 0)
                return FUNC1(r);

        return 0;
}