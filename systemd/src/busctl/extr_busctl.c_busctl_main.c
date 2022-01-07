
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;





 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int busctl_main(int argc, char *argv[]) {

        static const Verb verbs[] = {
                { "list", 140, 1, 139, 134 },
                { "status", 140, 2, 0, 132 },
                { "monitor", 140, 140, 0, 128 },
                { "capture", 140, 140, 0, 130 },
                { "tree", 140, 140, 0, 131 },
                { "introspect", 3, 4, 0, 135 },
                { "call", 5, 140, 0, 138 },
                { "emit", 4, 140, 0, 137 },
                { "get-property", 5, 140, 0, 136 },
                { "set-property", 6, 140, 0, 133 },
                { "help", 140, 140, 0, 129 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
