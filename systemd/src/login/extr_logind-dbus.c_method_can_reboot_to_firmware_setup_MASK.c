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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC6(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC2("SYSTEMD_REBOOT_TO_FIRMWARE_SETUP");
        if (r == -ENXIO) {
                /* EFI case: let's see what the firmware supports */

                r = FUNC1();
                if (r < 0) {
                        if (r != -EOPNOTSUPP)
                                FUNC3(r, "Failed to determine whether reboot to firmware is supported: %m");

                        return FUNC5(message, "s", "na");
                }

        } else if (r <= 0) {
                /* Non-EFI case: let's trust $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP */

                if (r < 0)
                        FUNC3(r, "Failed to parse $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP: %m");

                return FUNC5(message, "s", "na");
        }

        return FUNC4(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.set-reboot-to-firmware-setup",
                        NULL,
                        UID_INVALID,
                        error);
}