
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;




 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int networkctl_main(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "list", 137, 137, 136, 130 },
                { "status", 137, 137, 0, 132 },
                { "lldp", 137, 137, 0, 134 },
                { "label", 137, 137, 0, 131 },
                { "delete", 2, 137, 0, 135 },
                { "renew", 2, 137, 0, 133 },
                { "reconfigure", 2, 137, 0, 129 },
                { "reload", 1, 1, 0, 128 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
