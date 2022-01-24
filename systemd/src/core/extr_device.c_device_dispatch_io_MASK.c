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
typedef  scalar_t__ DeviceAction ;

/* Variables and functions */
 scalar_t__ DEVICE_ACTION_CHANGE ; 
 scalar_t__ DEVICE_ACTION_REMOVE ; 
 int DEVICE_FOUND_MOUNT ; 
 int DEVICE_FOUND_SWAP ; 
 int DEVICE_FOUND_UDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char const**) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(sd_device_monitor *monitor, sd_device *dev, void *userdata) {
        Manager *m = userdata;
        DeviceAction action;
        const char *sysfs;
        int r;

        FUNC0(m);
        FUNC0(dev);

        r = FUNC9(dev, &sysfs);
        if (r < 0) {
                FUNC6(dev, r, "Failed to get device sys path: %m");
                return 0;
        }

        r = FUNC1(dev, &action);
        if (r < 0) {
                FUNC6(dev, r, "Failed to get udev action: %m");
                return 0;
        }

        if (action == DEVICE_ACTION_CHANGE)
                FUNC4(m, sysfs);

        /* A change event can signal that a device is becoming ready, in particular if
         * the device is using the SYSTEMD_READY logic in udev
         * so we need to reach the else block of the following if, even for change events */
        if (action == DEVICE_ACTION_REMOVE) {
                r = FUNC11(m, dev);
                if (r < 0)
                        FUNC7(dev, r, "Failed to process swap device remove event, ignoring: %m");

                /* If we get notified that a device was removed by
                 * udev, then it's completely gone, hence unset all
                 * found bits */
                FUNC5(m, sysfs, 0, DEVICE_FOUND_UDEV|DEVICE_FOUND_MOUNT|DEVICE_FOUND_SWAP);

        } else if (FUNC2(dev)) {

                (void) FUNC3(m, dev);

                r = FUNC10(m, dev);
                if (r < 0)
                        FUNC7(dev, r, "Failed to process swap device new event, ignoring: %m");

                FUNC8(m);

                /* The device is found now, set the udev found bit */
                FUNC5(m, sysfs, DEVICE_FOUND_UDEV, DEVICE_FOUND_UDEV);

        } else {
                /* The device is nominally around, but not ready for
                 * us. Hence unset the udev bit, but leave the rest
                 * around. */

                FUNC5(m, sysfs, 0, DEVICE_FOUND_UDEV);
        }

        return 0;
}