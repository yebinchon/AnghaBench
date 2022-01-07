
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hwdb_main (int,char**) ;
 int log_open () ;
 int log_parse_environment () ;
 int mac_selinux_init () ;
 int parse_argv (int,char**) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        mac_selinux_init();

        return hwdb_main(argc, argv);
}
