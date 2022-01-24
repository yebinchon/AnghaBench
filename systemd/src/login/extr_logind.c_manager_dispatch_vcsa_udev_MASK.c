#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_device_monitor ;
struct TYPE_7__ {int /*<<< orphan*/  seat0; } ;
typedef  TYPE_1__ sd_device ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ACTION_REMOVE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(sd_device_monitor *monitor, sd_device *device, void *userdata) {
        Manager *m = userdata;
        const char *name;

        FUNC0(m);
        FUNC0(device);

        /* Whenever a VCSA device is removed try to reallocate our
         * VTs, to make sure our auto VTs never go away. */

        if (FUNC2(device, &name) >= 0 &&
            FUNC4(name, "vcsa") &&
            FUNC1(device, DEVICE_ACTION_REMOVE))
                FUNC3(m->seat0);

        return 0;
}