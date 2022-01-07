
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_4; int member_3; int const member_2; int const member_1; } ;
typedef TYPE_1__ Verb ;





 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int udevadm_main(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "info", 138, 138, 0, 133 },
                { "trigger", 138, 138, 0, 129 },
                { "settle", 138, 138, 0, 131 },
                { "control", 138, 138, 0, 136 },
                { "monitor", 138, 138, 0, 132 },
                { "hwdb", 138, 138, 0, 134 },
                { "test", 138, 138, 0, 130 },
                { "test-builtin", 138, 138, 0, 137 },
                { "version", 138, 138, 0, 128 },
                { "help", 138, 138, 0, 135 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
