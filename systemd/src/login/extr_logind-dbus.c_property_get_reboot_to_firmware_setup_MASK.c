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
typedef  void sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  void sd_bus ;

/* Variables and functions */
 int ENOENT ; 
 int ENXIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  F_OK ; 
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 () ; 
 int errno ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (void*,char*,int) ; 

__attribute__((used)) static int FUNC6(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {
        int r;

        FUNC1(bus);
        FUNC1(reply);
        FUNC1(userdata);

        r = FUNC3("SYSTEMD_REBOOT_TO_FIRMWARE_SETUP");
        if (r == -ENXIO) {
                /* EFI case: let's see what is currently configured in the EFI variables */
                r = FUNC2();
                if (r < 0 && r != -EOPNOTSUPP)
                        FUNC4(r, "Failed to determine reboot-to-firmware-setup state: %m");
        } else if (r < 0)
                FUNC4(r, "Failed to parse $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP: %m");
        else if (r > 0) {
                /* Non-EFI case: let's see whether /run/systemd/reboot-to-firmware-setup exists. */
                if (FUNC0("/run/systemd/reboot-to-firmware-setup", F_OK) < 0) {
                        if (errno != ENOENT)
                                FUNC4(errno, "Failed to check whether /run/systemd/reboot-to-firmware-setup exists: %m");

                        r = false;
                } else
                        r = true;
        }

        return FUNC5(reply, "b", r > 0);
}