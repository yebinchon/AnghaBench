
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIRTUALIZATION_NONE ;
 int arg_mode ;
 int arg_quiet ;
 int detect_container () ;
 int detect_virtualization () ;
 int detect_vm () ;
 int log_error_errno (int,char*) ;
 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int parse_argv (int,char**) ;
 int puts (int ) ;
 int running_in_chroot () ;
 int running_in_userns () ;
 int virtualization_to_string (int) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;





        log_show_color(1);
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        switch (arg_mode) {
        case 128:
                r = detect_vm();
                if (r < 0)
                        return log_error_errno(r, "Failed to check for VM: %m");
                break;

        case 130:
                r = detect_container();
                if (r < 0)
                        return log_error_errno(r, "Failed to check for container: %m");
                break;

        case 131:
                r = running_in_chroot();
                if (r < 0)
                        return log_error_errno(r, "Failed to check for chroot() environment: %m");
                return !r;

        case 129:
                r = running_in_userns();
                if (r < 0)
                        return log_error_errno(r, "Failed to check for user namespace: %m");
                return !r;

        case 132:
        default:
                r = detect_virtualization();
                if (r < 0)
                        return log_error_errno(r, "Failed to check for virtualization: %m");
                break;
        }

        if (!arg_quiet)
                puts(virtualization_to_string(r));

        return r == VIRTUALIZATION_NONE;
}
