#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_device_monitor ;
struct TYPE_9__ {int /*<<< orphan*/ * worker_watch; } ;
typedef  TYPE_1__ sd_device ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 size_t WRITE_END ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,char*) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(sd_device_monitor *monitor, sd_device *dev, void *userdata) {
        Manager *manager = userdata;
        int r;

        FUNC0(dev);
        FUNC0(manager);

        r = FUNC3(manager, dev);
        if (r < 0)
                FUNC2(dev, r, "Failed to process device, ignoring: %m");

        /* send processed event back to libudev listeners */
        r = FUNC1(monitor, NULL, dev);
        if (r < 0)
                FUNC2(dev, r, "Failed to send device, ignoring: %m");

        /* send udevd the result of the event execution */
        r = FUNC4(manager->worker_watch[WRITE_END]);
        if (r < 0)
                FUNC2(dev, r, "Failed to send signal to main daemon, ignoring: %m");

        return 1;
}