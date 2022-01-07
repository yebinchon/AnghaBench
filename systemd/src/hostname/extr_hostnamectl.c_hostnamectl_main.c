
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus ;
struct TYPE_3__ {char* member_0; int member_1; int member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;




 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int hostnamectl_main(sd_bus *bus, int argc, char *argv[]) {

        static const Verb verbs[] = {
                { "status", 136, 1, 135, 129 },
                { "set-hostname", 2, 2, 0, 132 },
                { "set-icon-name", 2, 2, 0, 131 },
                { "set-chassis", 2, 2, 0, 134 },
                { "set-deployment", 2, 2, 0, 133 },
                { "set-location", 2, 2, 0, 130 },
                { "help", 136, 136, 0, 128 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, bus);
}
