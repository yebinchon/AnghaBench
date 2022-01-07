
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;



 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;






__attribute__((used)) static int id128_main(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "new", 133, 1, 0, 128 },
                { "machine-id", 133, 1, 0, 129 },
                { "boot-id", 133, 1, 0, 132 },
                { "invocation-id", 133, 1, 0, 130 },
                { "help", 133, 133, 0, 131 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
