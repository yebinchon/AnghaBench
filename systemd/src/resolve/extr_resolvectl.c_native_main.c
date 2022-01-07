
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus ;
struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;




 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int native_main(int argc, char *argv[], sd_bus *bus) {

        static const Verb verbs[] = {
                { "help", 148, 148, 0, 137 },
                { "status", 148, 148, 147, 129 },
                { "query", 2, 148, 0, 132 },
                { "service", 2, 4, 0, 130 },
                { "openpgp", 2, 148, 0, 133 },
                { "tlsa", 2, 148, 0, 128 },
                { "statistics", 148, 1, 0, 143 },
                { "reset-statistics", 148, 1, 0, 144 },
                { "flush-caches", 148, 1, 0, 146 },
                { "reset-server-features", 148, 1, 0, 145 },
                { "dns", 148, 148, 0, 141 },
                { "domain", 148, 148, 0, 138 },
                { "default-route", 148, 3, 0, 142 },
                { "llmnr", 148, 3, 0, 136 },
                { "mdns", 148, 3, 0, 135 },
                { "dnsovertls", 148, 3, 0, 140 },
                { "dnssec", 148, 3, 0, 139 },
                { "nta", 148, 148, 0, 134 },
                { "revert", 148, 2, 0, 131 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, bus);
}
