
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int CAP_SYS_ADMIN ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int UID_INVALID ;
 int assert (int *) ;
 int efi_reboot_to_firmware_supported () ;
 int getenv_bool (char*) ;
 int log_warning_errno (int,char*) ;
 int return_test_polkit (int *,int ,char*,int *,int ,int *) ;
 int sd_bus_reply_method_return (int *,char*,char*) ;

__attribute__((used)) static int method_can_reboot_to_firmware_setup(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);

        r = getenv_bool("SYSTEMD_REBOOT_TO_FIRMWARE_SETUP");
        if (r == -ENXIO) {


                r = efi_reboot_to_firmware_supported();
                if (r < 0) {
                        if (r != -EOPNOTSUPP)
                                log_warning_errno(r, "Failed to determine whether reboot to firmware is supported: %m");

                        return sd_bus_reply_method_return(message, "s", "na");
                }

        } else if (r <= 0) {


                if (r < 0)
                        log_warning_errno(r, "Failed to parse $SYSTEMD_REBOOT_TO_FIRMWARE_SETUP: %m");

                return sd_bus_reply_method_return(message, "s", "na");
        }

        return return_test_polkit(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.set-reboot-to-firmware-setup",
                        ((void*)0),
                        UID_INVALID,
                        error);
}
