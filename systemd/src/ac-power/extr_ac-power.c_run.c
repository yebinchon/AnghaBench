
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ arg_verbose ;
 int log_error_errno (int,char*) ;
 int log_open () ;
 int log_parse_environment () ;
 int on_ac_power () ;
 int parse_argv (int,char**) ;
 int puts (int ) ;
 int yes_no (int) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;




        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        r = on_ac_power();
        if (r < 0)
                return log_error_errno(r, "Failed to read AC status: %m");

        if (arg_verbose)
                puts(yes_no(r));

        return r == 0;
}
