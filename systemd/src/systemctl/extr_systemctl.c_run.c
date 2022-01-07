
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIGH_RLIMIT_NOFILE ;
 int LC_ALL ;
 int STDOUT_FILENO ;

 int arg_action ;
 int arg_quiet ;
 int assert_not_reached (char*) ;
 int halt_main () ;
 int isatty (int ) ;
 int log_info (char*) ;
 int log_open () ;
 int log_parse_environment () ;
 int logind_cancel_shutdown () ;
 int original_stdout_is_tty ;
 int parse_argv (int,char**) ;
 int release_busses () ;
 int reload_with_fallback () ;
 int rlimit_nofile_bump (int ) ;
 int runlevel_main () ;
 scalar_t__ running_in_chroot () ;
 int setlocale (int ,char*) ;
 int sigbus_install () ;
 int start_with_fallback () ;
 int systemctl_main (int,char**) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        setlocale(LC_ALL, "");
        log_parse_environment();
        log_open();


        (void) rlimit_nofile_bump(HIGH_RLIMIT_NOFILE);

        sigbus_install();




        original_stdout_is_tty = isatty(STDOUT_FILENO);

        r = parse_argv(argc, argv);
        if (r <= 0)
                goto finish;

        if (arg_action != 129 && running_in_chroot() > 0) {
                if (!arg_quiet)
                        log_info("Running in chroot, ignoring request.");
                r = 0;
                goto finish;
        }




        switch (arg_action) {

        case 129:
                r = systemctl_main(argc, argv);
                break;





        case 145:
        case 141:
        case 140:
        case 142:
                r = halt_main();
                break;

        case 135:
        case 134:
        case 133:
        case 132:
        case 137:
                r = start_with_fallback();
                break;

        case 138:
        case 139:
                r = reload_with_fallback();
                break;

        case 149:
                r = logind_cancel_shutdown();
                break;

        case 136:
                r = runlevel_main();
                break;

        case 146:
        case 131:
        case 144:
        case 143:
        case 130:
        case 147:
        case 148:



        case 128:
        default:
                assert_not_reached("Unknown action");
        }

finish:
        release_busses();


        return r;
}
