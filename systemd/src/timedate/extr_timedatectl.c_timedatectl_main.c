
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus ;
struct TYPE_3__ {char* member_0; int const member_1; int member_2; int member_4; int member_3; } ;
typedef TYPE_1__ Verb ;




 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int timedatectl_main(sd_bus *bus, int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "status", 141, 1, 140, 133 },
                { "show", 141, 1, 0, 134 },
                { "set-time", 2, 2, 0, 136 },
                { "set-timezone", 2, 2, 0, 135 },
                { "list-timezones", 141, 1, 0, 139 },
                { "set-local-rtc", 2, 2, 0, 138 },
                { "set-ntp", 2, 2, 0, 137 },
                { "timesync-status", 141, 1, 0, 131 },
                { "show-timesync", 141, 1, 0, 132 },
                { "ntp-servers", 3, 141, 0, 129 },
                { "revert", 2, 2, 0, 128 },
                { "help", 141, 141, 0, 130 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, bus);
}
