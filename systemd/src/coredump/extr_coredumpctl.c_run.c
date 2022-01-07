
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HIGH_RLIMIT_NOFILE ;
 int LC_ALL ;
 char* ansi_highlight_red () ;
 char* ansi_normal () ;
 int check_units_active () ;
 int coredumpctl_main (int,char**) ;
 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int parse_argv (int,char**) ;
 int printf (char*,char*,int,char*,char*) ;
 int rlimit_nofile_bump (int ) ;
 int setlocale (int ,char*) ;
 int sigbus_install () ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r, units_active;

        setlocale(LC_ALL, "");
        log_show_color(1);
        log_parse_environment();
        log_open();


        (void) rlimit_nofile_bump(HIGH_RLIMIT_NOFILE);

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        sigbus_install();

        units_active = check_units_active();

        r = coredumpctl_main(argc, argv);

        if (units_active > 0)
                printf("%s-- Notice: %d systemd-coredump@.service %s, output may be incomplete.%s\n",
                       ansi_highlight_red(),
                       units_active, units_active == 1 ? "unit is running" : "units are running",
                       ansi_normal());
        return r;
}
