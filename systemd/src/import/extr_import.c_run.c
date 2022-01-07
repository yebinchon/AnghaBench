
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 int SIGPIPE ;
 int ignore_signals (int ,int) ;
 int import_main (int,char**) ;
 int log_open () ;
 int log_parse_environment () ;
 int parse_argv (int,char**) ;
 int setlocale (int ,char*) ;

__attribute__((used)) static int run(int argc, char *argv[]) {
        int r;

        setlocale(LC_ALL, "");
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return 0;

        (void) ignore_signals(SIGPIPE, -1);

        return import_main(argc, argv);
}
