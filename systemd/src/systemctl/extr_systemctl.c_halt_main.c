
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACTION_HALT ;
 int ACTION_POWEROFF ;
 int ACTION_REBOOT ;
 int EINPROGRESS ;
 int EOPNOTSUPP ;
 int EPERM ;
 scalar_t__ IN_SET (int,int ,int ,...) ;
 int arg_action ;
 scalar_t__ arg_dry_run ;
 scalar_t__ arg_force ;
 int arg_no_block ;
 int arg_no_wtmp ;
 scalar_t__ arg_when ;
 int assert (int) ;
 scalar_t__ geteuid () ;
 int halt_now (int ) ;
 int log_debug (char*) ;
 int log_error_errno (int,char*) ;
 int log_warning_errno (int,char*) ;
 int logind_check_inhibitors (int ) ;
 int logind_reboot (int ) ;
 scalar_t__ logind_schedule_shutdown () ;
 int must_be_root () ;
 scalar_t__ sd_booted () ;
 int start_with_fallback () ;
 int utmp_put_shutdown () ;

__attribute__((used)) static int halt_main(void) {
        int r;

        r = logind_check_inhibitors(arg_action);
        if (r < 0)
                return r;


        if (arg_when > 0 && logind_schedule_shutdown() == 0)
                return 0;


        if (geteuid() != 0) {
                if (arg_dry_run || arg_force > 0) {
                        (void) must_be_root();
                        return -EPERM;
                }




                if (IN_SET(arg_action, ACTION_POWEROFF, ACTION_REBOOT, ACTION_HALT)) {
                        r = logind_reboot(arg_action);
                        if (r >= 0)
                                return r;
                        if (IN_SET(r, -EOPNOTSUPP, -EINPROGRESS))



                                return r;

                }
        }




        arg_no_block = 1;

        if (!arg_dry_run && !arg_force)
                return start_with_fallback();

        assert(geteuid() == 0);

        if (!arg_no_wtmp) {
                if (sd_booted() > 0)
                        log_debug("Not writing utmp record, assuming that systemd-update-utmp is used.");
                else {
                        r = utmp_put_shutdown();
                        if (r < 0)
                                log_warning_errno(r, "Failed to write utmp record: %m");
                }
        }

        if (arg_dry_run)
                return 0;

        r = halt_now(arg_action);
        return log_error_errno(r, "Failed to reboot: %m");
}
