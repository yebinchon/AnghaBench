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
struct TYPE_8__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int ENOENT ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 int FUNC3 (int) ; 
 int errno ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (TYPE_1__*,char*,int*) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 scalar_t__ FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        bool use_efi;
        int b, r;

        FUNC0(message);
        FUNC0(m);

        r = FUNC7(message, "b", &b);
        if (r < 0)
                return r;

        r = FUNC4("SYSTEMD_REBOOT_TO_FIRMWARE_SETUP");
        if (r == -ENXIO) {
                /* EFI case: let's see what the firmware supports */

                r = FUNC2();
                if (r == -EOPNOTSUPP)
                        return FUNC6(error, SD_BUS_ERROR_NOT_SUPPORTED, "Firmware does not support boot into firmware.");
                if (r < 0)
                        return r;

                use_efi = true;

        } else if (r <= 0) {
                /* non-EFI case: $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP is set to off */

                if (r < 0)
                        FUNC5(r, "Failed to parse $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP: %m");

                return FUNC6(error, SD_BUS_ERROR_NOT_SUPPORTED, "Firmware does not support boot into firmware.");
        } else
                /* non-EFI case: $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP is set to on */
                use_efi = false;

        r = FUNC1(message,
                                    CAP_SYS_ADMIN,
                                    "org.freedesktop.login1.set-reboot-to-firmware-setup",
                                    NULL,
                                    false,
                                    UID_INVALID,
                                    &m->polkit_registry,
                                    error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1; /* No authorization for now, but the async polkit stuff will call us again when it has it */

        if (use_efi) {
                r = FUNC3(b);
                if (r < 0)
                        return r;
        } else {
                if (b) {
                        r = FUNC9("/run/systemd/reboot-to-firmware-setup");
                        if (r < 0)
                                return r;
                } else {
                        if (FUNC10("/run/systemd/reboot-to-firmware-setup") < 0 && errno != ENOENT)
                                return -errno;
                }
        }

        return FUNC8(message, NULL);
}