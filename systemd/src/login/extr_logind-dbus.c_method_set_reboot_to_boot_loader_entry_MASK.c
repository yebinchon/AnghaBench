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
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  polkit_registry; } ;
typedef  TYPE_1__ sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  EFI_LOADER_FEATURE_ENTRY_ONESHOT ; 
 int /*<<< orphan*/  EFI_VENDOR_LOADER ; 
 int ENOENT ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SD_BUS_ERROR_INVALID_ARGS ; 
 int /*<<< orphan*/  SD_BUS_ERROR_NOT_SUPPORTED ; 
 int /*<<< orphan*/  UID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,char const*) ; 
 int errno ; 
 int FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (TYPE_1__*,char*,char const**) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (char*) ; 
 int FUNC15 (char*,char const*) ; 

__attribute__((used)) static int FUNC16(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        bool use_efi;
        const char *v;
        int r;

        FUNC1(message);
        FUNC1(m);

        r = FUNC12(message, "s", &v);
        if (r < 0)
                return r;

        if (FUNC9(v))
                v = NULL;
        else if (FUNC4(v)) {
                r = FUNC2(v);
                if (r < 0)
                        return r;
                if (r == 0)
                        return FUNC11(error, SD_BUS_ERROR_NOT_SUPPORTED, "Boot loader entry '%s' is not known.", v);
        } else
                return FUNC11(error, SD_BUS_ERROR_INVALID_ARGS, "Boot loader entry name '%s' is not valid, refusing.", v);

        r = FUNC8("SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY");
        if (r == -ENXIO) {
                uint64_t features;

                /* EFI case: let's see if booting into boot loader entry is supported. */

                r = FUNC5(&features);
                if (r < 0)
                        FUNC10(r, "Failed to determine whether reboot into boot loader entry is supported: %m");
                if (r < 0 || !FUNC0(features, EFI_LOADER_FEATURE_ENTRY_ONESHOT))
                        return FUNC11(error, SD_BUS_ERROR_NOT_SUPPORTED, "Loader does not support boot into boot loader entry.");

                use_efi = true;

        } else if (r <= 0) {
                /* non-EFI case: $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY is set to off */

                if (r < 0)
                        FUNC10(r, "Failed to parse $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY: %m");

                return FUNC11(error, SD_BUS_ERROR_NOT_SUPPORTED, "Loader does not support boot into boot loader entry.");
        } else
                /* non-EFI case: $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY is set to on */
                use_efi = false;

        r = FUNC3(message,
                                    CAP_SYS_ADMIN,
                                    "org.freedesktop.login1.set-reboot-to-boot-loader-entry",
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
                if (FUNC9(v))
                        /* Delete item */
                        r = FUNC6(EFI_VENDOR_LOADER, "LoaderEntryOneShot", NULL, 0);
                else
                        r = FUNC7(EFI_VENDOR_LOADER, "LoaderEntryOneShot", v);
                if (r < 0)
                        return r;
        } else {
                if (FUNC9(v)) {
                        if (FUNC14("/run/systemd/reboot-to-boot-loader-entry") < 0 && errno != ENOENT)
                                return -errno;
                } else {
                        r = FUNC15("/run/systemd/reboot-boot-to-loader-entry", v);
                        if (r < 0)
                                return r;
                }
        }

        return FUNC13(message, NULL);
}