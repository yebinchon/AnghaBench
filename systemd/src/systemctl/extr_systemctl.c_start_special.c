
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef enum action { ____Placeholder_action } action ;


 int ACTION_EXIT ;
 int ACTION_HALT ;
 int ACTION_HIBERNATE ;
 int ACTION_HYBRID_SLEEP ;
 int ACTION_KEXEC ;
 int ACTION_POWEROFF ;
 int ACTION_REBOOT ;
 int ACTION_SUSPEND ;
 int ACTION_SUSPEND_THEN_HIBERNATE ;
 int EINPROGRESS ;
 int ENOENT ;
 int EOPNOTSUPP ;
 int ETIMEDOUT ;
 int IN_SET (int,int,int,...) ;
 int arg_force ;
 int arg_no_block ;
 int assert (char**) ;
 int halt_now (int) ;
 int load_kexec_kernel () ;
 int log_error_errno (int,char*) ;
 int log_notice (char*) ;
 int logind_check_inhibitors (int) ;
 int logind_reboot (int) ;
 int must_be_root () ;
 int prepare_boot_loader_entry () ;
 int prepare_boot_loader_menu () ;
 int prepare_firmware_setup () ;
 int safe_atou8 (char*,int *) ;
 int set_exit_code (int ) ;
 int start_unit (int,char**,void*) ;
 int trivial_method (int,char**,void*) ;
 int update_reboot_parameter_and_warn (char*,int) ;
 int verb_to_action (char*) ;

__attribute__((used)) static int start_special(int argc, char *argv[], void *userdata) {
        enum action a;
        int r;
        bool termination_action;


        assert(argv);

        a = verb_to_action(argv[0]);

        r = logind_check_inhibitors(a);
        if (r < 0)
                return r;

        if (arg_force >= 2) {
                r = must_be_root();
                if (r < 0)
                        return r;
        }

        r = prepare_firmware_setup();
        if (r < 0)
                return r;

        r = prepare_boot_loader_menu();
        if (r < 0)
                return r;

        r = prepare_boot_loader_entry();
        if (r < 0)
                return r;

        if (a == ACTION_REBOOT && argc > 1) {
                r = update_reboot_parameter_and_warn(argv[1], 0);
                if (r < 0)
                        return r;

        } else if (a == ACTION_KEXEC) {
                r = load_kexec_kernel();
                if (r < 0 && arg_force >= 1)
                        log_notice("Failed to load kexec kernel, continuing without.");
                else if (r < 0)
                        return r;

        } else if (a == ACTION_EXIT && argc > 1) {
                uint8_t code;





                r = safe_atou8(argv[1], &code);
                if (r < 0)
                        return log_error_errno(r, "Invalid exit code.");

                r = set_exit_code(code);
                if (r < 0)
                        return r;
        }

        termination_action = IN_SET(a,
                                    ACTION_HALT,
                                    ACTION_POWEROFF,
                                    ACTION_REBOOT);
        if (termination_action && arg_force >= 2)
                return halt_now(a);

        if (arg_force >= 1 &&
            (termination_action || IN_SET(a, ACTION_KEXEC, ACTION_EXIT)))
                r = trivial_method(argc, argv, userdata);
        else {

                if (IN_SET(a,
                           ACTION_POWEROFF,
                           ACTION_REBOOT,
                           ACTION_HALT,
                           ACTION_SUSPEND,
                           ACTION_HIBERNATE,
                           ACTION_HYBRID_SLEEP,
                           ACTION_SUSPEND_THEN_HIBERNATE)) {

                        r = logind_reboot(a);
                        if (r >= 0)
                                return r;
                        if (IN_SET(r, -EOPNOTSUPP, -EINPROGRESS))

                                return r;





                        arg_no_block = 1;

                } else if (IN_SET(a, ACTION_EXIT, ACTION_KEXEC))


                        arg_no_block = 1;

                r = start_unit(argc, argv, userdata);
        }

        if (termination_action && arg_force < 2 &&
            IN_SET(r, -ENOENT, -ETIMEDOUT))
                log_notice("It is possible to perform action directly, see discussion of --force --force in man:systemctl(1).");

        return r;
}
