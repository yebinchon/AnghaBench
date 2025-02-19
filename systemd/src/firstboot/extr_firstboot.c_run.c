
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_error_errno (int,char*) ;
 int log_setup_service () ;
 int parse_argv (int,char**) ;
 int proc_cmdline_get_bool (char*,int*) ;
 int process_hostname () ;
 int process_keymap () ;
 int process_locale () ;
 int process_machine_id () ;
 int process_root_password () ;
 int process_timezone () ;
 int umask (int) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        bool enabled;
        int r;

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        log_setup_service();

        umask(0022);

        r = proc_cmdline_get_bool("systemd.firstboot", &enabled);
        if (r < 0)
                return log_error_errno(r, "Failed to parse systemd.firstboot= kernel command line argument, ignoring: %m");
        if (r > 0 && !enabled)
                return 0;

        r = process_locale();
        if (r < 0)
                return r;

        r = process_keymap();
        if (r < 0)
                return r;

        r = process_timezone();
        if (r < 0)
                return r;

        r = process_hostname();
        if (r < 0)
                return r;

        r = process_machine_id();
        if (r < 0)
                return r;

        r = process_root_password();
        if (r < 0)
                return r;

        return 0;
}
