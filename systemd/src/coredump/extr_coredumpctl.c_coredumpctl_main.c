
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_4; int member_3; int const member_2; int const member_1; } ;
typedef TYPE_1__ Verb ;




 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;




__attribute__((used)) static int coredumpctl_main(int argc, char *argv[]) {

        static const Verb verbs[] = {
                { "list", 132, 132, 131, 129 },
                { "info", 132, 132, 0, 129 },
                { "dump", 132, 132, 0, 130 },
                { "debug", 132, 132, 0, 128 },
                { "gdb", 132, 132, 0, 128 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
