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
typedef  int /*<<< orphan*/  sd_device_monitor ;
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 

__attribute__((used)) static int FUNC5(sd_device_monitor *monitor, sd_device *dev, void *userdata) {
        Manager *manager = userdata;
        int r;

        FUNC0(manager);

        FUNC1(dev, NULL);

        r = FUNC2(manager, dev);
        if (r < 0) {
                FUNC4(dev, r, "Failed to insert device into event queue: %m");
                return 1;
        }

        /* we have fresh events, try to schedule them */
        FUNC3(manager);

        return 1;
}