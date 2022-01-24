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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EFI_LOADER_FEATURE_ENTRY_ONESHOT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int FUNC7(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        FUNC1(message);
        FUNC1(m);

        r = FUNC3("SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY");
        if (r == -ENXIO) {
                uint64_t features = 0;

                /* EFI case, let's see if booting into boot loader entry is supported. */

                r = FUNC2(&features);
                if (r < 0)
                        FUNC4(r, "Failed to determine whether reboot to boot loader entry is supported: %m");
                if (r < 0 || !FUNC0(features, EFI_LOADER_FEATURE_ENTRY_ONESHOT))
                        return FUNC6(message, "s", "na");

        } else if (r <= 0) {
                /* Non-EFI case: let's trust $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY */

                if (r < 0)
                        FUNC4(r, "Failed to parse $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY: %m");

                return FUNC6(message, "s", "na");
        }

        return FUNC5(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.set-reboot-to-boot-loader-entry",
                        NULL,
                        UID_INVALID,
                        error);
}