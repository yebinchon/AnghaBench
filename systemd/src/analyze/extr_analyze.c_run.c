
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;


 int LC_ALL ;
 int LC_NUMERIC ;







 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int parse_argv (int,char**) ;



 int setlocale (int ,char*) ;



__attribute__((used)) static int run(int argc, char *argv[]) {

        static const Verb verbs[] = {
                { "help", 154, 154, 0, 133 },
                { "time", 154, 1, 153, 149 },
                { "blame", 154, 1, 0, 152 },
                { "critical-chain", 154, 154, 0, 151 },
                { "plot", 154, 1, 0, 150 },
                { "dot", 154, 154, 0, 143 },
                { "log-level", 154, 2, 0, 135 },
                { "log-target", 154, 2, 0, 134 },

                { "set-log-level", 2, 2, 0, 131 },
                { "get-log-level", 154, 1, 0, 137 },
                { "set-log-target", 2, 2, 0, 130 },
                { "get-log-target", 154, 1, 0, 136 },
                { "dump", 154, 1, 0, 142 },
                { "cat-config", 2, 154, 0, 148 },
                { "unit-files", 154, 154, 0, 145 },
                { "unit-paths", 1, 1, 0, 138 },
                { "exit-status", 154, 154, 0, 141 },
                { "syscall-filter", 154, 154, 0, 140 },
                { "condition", 2, 154, 0, 147 },
                { "verify", 2, 154, 0, 144 },
                { "calendar", 2, 154, 0, 129 },
                { "timestamp", 2, 154, 0, 128 },
                { "timespan", 2, 154, 0, 139 },
                { "service-watchdogs", 154, 2, 0, 132 },
                { "security", 154, 154, 0, 146 },
                {}
        };

        int r;

        setlocale(LC_ALL, "");
        setlocale(LC_NUMERIC, "C");

        log_show_color(1);
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
