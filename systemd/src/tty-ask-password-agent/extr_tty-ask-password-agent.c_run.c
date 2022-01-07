
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ACTION_QUERY ;
 scalar_t__ arg_action ;
 scalar_t__ arg_console ;
 scalar_t__ arg_device ;
 int ask_on_consoles (char**) ;
 int log_setup_service () ;
 int parse_argv (int,char**) ;
 int process_and_watch_password_files (int) ;
 int release_terminal () ;
 int setsid () ;
 int umask (int) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        log_setup_service();

        umask(0022);

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        if (arg_console && !arg_device)



                return ask_on_consoles(argv);

        if (arg_device) {





                (void) setsid();
                (void) release_terminal();
        }

        return process_and_watch_password_files(arg_action != ACTION_QUERY);
}
