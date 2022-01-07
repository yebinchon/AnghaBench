
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int CAP_SYS_ADMIN ;
 int EFI_LOADER_FEATURE_ENTRY_ONESHOT ;
 int EFI_VENDOR_LOADER ;
 int ENOENT ;
 int ENXIO ;
 int FLAGS_SET (int ,int ) ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int boot_loader_entry_exists (char const*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 scalar_t__ efi_loader_entry_name_valid (char const*) ;
 int efi_loader_get_features (int *) ;
 int efi_set_variable (int ,char*,int *,int ) ;
 int efi_set_variable_string (int ,char*,char const*) ;
 int errno ;
 int getenv_bool (char*) ;
 scalar_t__ isempty (char const*) ;
 int log_warning_errno (int,char*) ;
 int sd_bus_error_setf (int *,int ,char*,...) ;
 int sd_bus_message_read (TYPE_1__*,char*,char const**) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;
 scalar_t__ unlink (char*) ;
 int write_string_file_atomic_label (char*,char const*) ;

__attribute__((used)) static int method_set_reboot_to_boot_loader_entry(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        bool use_efi;
        const char *v;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "s", &v);
        if (r < 0)
                return r;

        if (isempty(v))
                v = ((void*)0);
        else if (efi_loader_entry_name_valid(v)) {
                r = boot_loader_entry_exists(v);
                if (r < 0)
                        return r;
                if (r == 0)
                        return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Boot loader entry '%s' is not known.", v);
        } else
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "Boot loader entry name '%s' is not valid, refusing.", v);

        r = getenv_bool("SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY");
        if (r == -ENXIO) {
                uint64_t features;



                r = efi_loader_get_features(&features);
                if (r < 0)
                        log_warning_errno(r, "Failed to determine whether reboot into boot loader entry is supported: %m");
                if (r < 0 || !FLAGS_SET(features, EFI_LOADER_FEATURE_ENTRY_ONESHOT))
                        return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Loader does not support boot into boot loader entry.");

                use_efi = 1;

        } else if (r <= 0) {


                if (r < 0)
                        log_warning_errno(r, "Failed to parse $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY: %m");

                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Loader does not support boot into boot loader entry.");
        } else

                use_efi = 0;

        r = bus_verify_polkit_async(message,
                                    CAP_SYS_ADMIN,
                                    "org.freedesktop.login1.set-reboot-to-boot-loader-entry",
                                    ((void*)0),
                                    0,
                                    UID_INVALID,
                                    &m->polkit_registry,
                                    error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        if (use_efi) {
                if (isempty(v))

                        r = efi_set_variable(EFI_VENDOR_LOADER, "LoaderEntryOneShot", ((void*)0), 0);
                else
                        r = efi_set_variable_string(EFI_VENDOR_LOADER, "LoaderEntryOneShot", v);
                if (r < 0)
                        return r;
        } else {
                if (isempty(v)) {
                        if (unlink("/run/systemd/reboot-to-boot-loader-entry") < 0 && errno != ENOENT)
                                return -errno;
                } else {
                        r = write_string_file_atomic_label("/run/systemd/reboot-boot-to-loader-entry", v);
                        if (r < 0)
                                return r;
                }
        }

        return sd_bus_reply_method_return(message, ((void*)0));
}
