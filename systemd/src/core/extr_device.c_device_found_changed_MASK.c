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
typedef  scalar_t__ DeviceFound ;
typedef  int /*<<< orphan*/  Device ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_DEAD ; 
 int /*<<< orphan*/  DEVICE_FOUND_UDEV ; 
 scalar_t__ DEVICE_NOT_FOUND ; 
 int /*<<< orphan*/  DEVICE_PLUGGED ; 
 int /*<<< orphan*/  DEVICE_TENTATIVE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(Device *d, DeviceFound previous, DeviceFound now) {
        FUNC2(d);

        /* Didn't exist before, but does now? if so, generate a new invocation ID for it */
        if (previous == DEVICE_NOT_FOUND && now != DEVICE_NOT_FOUND)
                (void) FUNC4(FUNC1(d));

        if (FUNC0(now, DEVICE_FOUND_UDEV))
                /* When the device is known to udev we consider it plugged. */
                FUNC3(d, DEVICE_PLUGGED);
        else if (now != DEVICE_NOT_FOUND && !FUNC0(previous, DEVICE_FOUND_UDEV))
                /* If the device has not been seen by udev yet, but is now referenced by the kernel, then we assume the
                 * kernel knows it now, and udev might soon too. */
                FUNC3(d, DEVICE_TENTATIVE);
        else
                /* If nobody sees the device, or if the device was previously seen by udev and now is only referenced
                 * from the kernel, then we consider the device is gone, the kernel just hasn't noticed it yet. */
                FUNC3(d, DEVICE_DEAD);
}