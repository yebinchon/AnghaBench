
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int networkctl_main (int,char**) ;
 int parse_argv (int,char**) ;
 int warn_networkd_missing () ;

__attribute__((used)) static int run(int argc, char* argv[]) {
        int r;

        log_show_color(1);
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        warn_networkd_missing();

        return networkctl_main(argc, argv);
}
