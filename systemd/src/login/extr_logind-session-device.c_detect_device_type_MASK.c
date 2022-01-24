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
typedef  int /*<<< orphan*/  sd_device ;
typedef  int /*<<< orphan*/  DeviceType ;

/* Variables and functions */
 int /*<<< orphan*/  DEVICE_TYPE_DRM ; 
 int /*<<< orphan*/  DEVICE_TYPE_EVDEV ; 
 int /*<<< orphan*/  DEVICE_TYPE_UNKNOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const**) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static DeviceType FUNC4(sd_device *dev) {
        const char *sysname, *subsystem;
        DeviceType type = DEVICE_TYPE_UNKNOWN;

        if (FUNC1(dev, &sysname) < 0 ||
            FUNC0(dev, &subsystem) < 0)
                return type;

        if (FUNC3(subsystem, "drm")) {
                if (FUNC2(sysname, "card"))
                        type = DEVICE_TYPE_DRM;
        } else if (FUNC3(subsystem, "input")) {
                if (FUNC2(sysname, "event"))
                        type = DEVICE_TYPE_EVDEV;
        }

        return type;
}