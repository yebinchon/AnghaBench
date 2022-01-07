
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;






 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;




 int log_open () ;
 int log_parse_environment () ;
 int log_show_color (int) ;
 int parse_argv (int,char**) ;




__attribute__((used)) static int run(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "help", 138, 138, 0, 134 },
                { "list", 138, 1, 137, 131 },
                { "attach", 2, 138, 0, 136 },
                { "detach", 2, 2, 0, 135 },
                { "inspect", 2, 138, 0, 133 },
                { "is-attached", 2, 2, 0, 132 },
                { "read-only", 2, 3, 0, 130 },
                { "remove", 2, 138, 0, 129 },
                { "set-limit", 3, 3, 0, 128 },
                {}
        };

        int r;

        log_show_color(1);
        log_parse_environment();
        log_open();

        r = parse_argv(argc, argv);
        if (r <= 0)
                return r;

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
