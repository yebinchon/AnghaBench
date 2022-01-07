
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int arg_touch_variables ;
 int bootctl_main (int,char**) ;
 scalar_t__ detect_container () ;
 int log_open () ;
 int log_parse_environment () ;
 int parse_argv (int,char**) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        log_parse_environment();
        log_open();


        if (detect_container() > 0)
                arg_touch_variables = 0;

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        return bootctl_main(argc, argv);
}
