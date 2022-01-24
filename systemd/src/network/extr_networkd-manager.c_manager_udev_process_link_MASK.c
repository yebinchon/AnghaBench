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
typedef  int /*<<< orphan*/  Link ;
typedef  int /*<<< orphan*/  DeviceAction ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_ACTION_ADD ; 
 int /*<<< orphan*/  DEVICE_ACTION_CHANGE ; 
 int /*<<< orphan*/  DEVICE_ACTION_MOVE ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int*) ; 

__attribute__((used)) static int FUNC12(sd_device_monitor *monitor, sd_device *device, void *userdata) {
        Manager *m = userdata;
        DeviceAction action;
        Link *link = NULL;
        int r, ifindex;

        FUNC1(m);
        FUNC1(device);

        r = FUNC3(device, &action);
        if (r < 0) {
                FUNC9(device, r, "Failed to get udev action, ignoring device: %m");
                return 0;
        }

        if (!FUNC0(action, DEVICE_ACTION_ADD, DEVICE_ACTION_CHANGE, DEVICE_ACTION_MOVE)) {
                FUNC8(device, "Ignoring udev %s event for device.", FUNC2(action));
                return 0;
        }

        r = FUNC11(device, &ifindex);
        if (r < 0) {
                FUNC9(device, r, "Ignoring udev ADD event for device without ifindex or with invalid ifindex: %m");
                return 0;
        }

        r = FUNC4(device);
        if (r < 0) {
                FUNC10(device, r, "Failed to determine the device is renamed or not, ignoring '%s' uevent: %m",
                                       FUNC2(action));
                return 0;
        }
        if (r > 0) {
                FUNC8(device, "Interface is under renaming, wait for the interface to be renamed: %m");
                return 0;
        }

        r = FUNC5(m, ifindex, &link);
        if (r < 0) {
                if (r != -ENODEV)
                        FUNC7(r, "Failed to get link from ifindex %i, ignoring: %m", ifindex);
                return 0;
        }

        (void) FUNC6(link, device);

        return 0;
}