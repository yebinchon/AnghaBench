
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum action { ____Placeholder_action } action ;






 int RB_ENABLE_CAD ;
 int RB_HALT_SYSTEM ;
 int RB_POWER_OFF ;
 int REBOOT_DRY_RUN ;
 int REBOOT_FALLBACK ;
 int REBOOT_LOG ;
 scalar_t__ arg_dry_run ;
 int arg_no_sync ;
 int arg_quiet ;
 int assert_not_reached (char*) ;
 int errno ;
 int log_info (char*) ;
 int reboot (int ) ;
 int reboot_with_parameter (int) ;
 int sync () ;

__attribute__((used)) static int halt_now(enum action a) {


        if (!arg_no_sync && !arg_dry_run)
                (void) sync();


        if (!arg_dry_run)
                (void) reboot(RB_ENABLE_CAD);

        switch (a) {

        case 131:
                if (!arg_quiet)
                        log_info("Halting.");
                if (arg_dry_run)
                        return 0;
                (void) reboot(RB_HALT_SYSTEM);
                return -errno;

        case 129:
                if (!arg_quiet)
                        log_info("Powering off.");
                if (arg_dry_run)
                        return 0;
                (void) reboot(RB_POWER_OFF);
                return -errno;

        case 130:
        case 128:
                return reboot_with_parameter(REBOOT_FALLBACK |
                                             (arg_quiet ? 0 : REBOOT_LOG) |
                                             (arg_dry_run ? REBOOT_DRY_RUN : 0));

        default:
                assert_not_reached("Unknown action.");
        }
}
