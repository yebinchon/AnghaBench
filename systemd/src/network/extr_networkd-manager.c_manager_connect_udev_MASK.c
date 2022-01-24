#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  device_monitor; int /*<<< orphan*/  event; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int FUNC1 (int,char*) ; 
 int /*<<< orphan*/  manager_udev_process_link ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int FUNC6(Manager *m) {
        int r;

        /* udev does not initialize devices inside containers,
         * so we rely on them being already initialized before
         * entering the container */
        if (FUNC0() > 0)
                return 0;

        r = FUNC4(&m->device_monitor);
        if (r < 0)
                return FUNC1(r, "Failed to initialize device monitor: %m");

        r = FUNC3(m->device_monitor, "net", NULL);
        if (r < 0)
                return FUNC1(r, "Could not add device monitor filter: %m");

        r = FUNC2(m->device_monitor, m->event);
        if (r < 0)
                return FUNC1(r, "Failed to attach event to device monitor: %m");

        r = FUNC5(m->device_monitor, manager_udev_process_link, m);
        if (r < 0)
                return FUNC1(r, "Failed to start device monitor: %m");

        return 0;
}