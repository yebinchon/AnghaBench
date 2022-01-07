
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int CAP_SYS_ADMIN ;
 int EFI_LOADER_FEATURE_ENTRY_ONESHOT ;
 int ENXIO ;
 int FLAGS_SET (int ,int ) ;
 int UID_INVALID ;
 int assert (int *) ;
 int efi_loader_get_features (int *) ;
 int getenv_bool (char*) ;
 int log_warning_errno (int,char*) ;
 int return_test_polkit (int *,int ,char*,int *,int ,int *) ;
 int sd_bus_reply_method_return (int *,char*,char*) ;

__attribute__((used)) static int method_can_reboot_to_boot_loader_entry(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);

        r = getenv_bool("SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY");
        if (r == -ENXIO) {
                uint64_t features = 0;



                r = efi_loader_get_features(&features);
                if (r < 0)
                        log_warning_errno(r, "Failed to determine whether reboot to boot loader entry is supported: %m");
                if (r < 0 || !FLAGS_SET(features, EFI_LOADER_FEATURE_ENTRY_ONESHOT))
                        return sd_bus_reply_method_return(message, "s", "na");

        } else if (r <= 0) {


                if (r < 0)
                        log_warning_errno(r, "Failed to parse $SYSTEMD_REBOOT_TO_BOOT_LOADER_ENTRY: %m");

                return sd_bus_reply_method_return(message, "s", "na");
        }

        return return_test_polkit(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.set-reboot-to-boot-loader-entry",
                        ((void*)0),
                        UID_INVALID,
                        error);
}
