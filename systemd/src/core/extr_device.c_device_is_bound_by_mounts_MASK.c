#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int bind_mounts; } ;
typedef  TYPE_1__ sd_device ;
typedef  TYPE_1__ Device ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,char*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,char const**) ; 

__attribute__((used)) static bool FUNC4(Device *d, sd_device *dev) {
        const char *bound_by;
        int r;

        FUNC0(d);
        FUNC0(dev);

        if (FUNC3(dev, "SYSTEMD_MOUNT_DEVICE_BOUND", &bound_by) >= 0) {
                r = FUNC2(bound_by);
                if (r < 0)
                        FUNC1(dev, r, "Failed to parse SYSTEMD_MOUNT_DEVICE_BOUND='%s' udev property, ignoring: %m", bound_by);

                d->bind_mounts = r > 0;
        } else
                d->bind_mounts = false;

        return d->bind_mounts;
}