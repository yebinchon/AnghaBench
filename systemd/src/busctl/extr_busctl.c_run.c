
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int busctl_main (int,char**) ;
 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int parse_argv (int,char**) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        log_show_color(1);
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        return busctl_main(argc, argv);
}
