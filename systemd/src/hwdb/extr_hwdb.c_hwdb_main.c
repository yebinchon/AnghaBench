
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int member_1; int member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;


 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;



__attribute__((used)) static int hwdb_main(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "update", 1, 1, 0, 128 },
                { "query", 2, 2, 0, 129 },
                {},
        };

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
