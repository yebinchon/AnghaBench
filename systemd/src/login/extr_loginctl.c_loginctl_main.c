
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus ;
struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int const member_4; int member_3; } ;
typedef TYPE_1__ Verb ;






 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int loginctl_main(int argc, char *argv[], sd_bus *bus) {

        static const Verb verbs[] = {
                { "help", 145, 145, 0, 139 },
                { "list-sessions", 145, 1, 144, 135 },
                { "session-status", 145, 145, 0, 131 },
                { "show-session", 145, 145, 0, 131 },
                { "activate", 145, 2, 0, 143 },
                { "lock-session", 145, 145, 0, 143 },
                { "unlock-session", 145, 145, 0, 143 },
                { "lock-sessions", 145, 1, 0, 133 },
                { "unlock-sessions", 145, 1, 0, 133 },
                { "terminate-session", 2, 145, 0, 143 },
                { "kill-session", 2, 145, 0, 138 },
                { "list-users", 145, 1, 0, 134 },
                { "user-status", 145, 145, 0, 130 },
                { "show-user", 145, 145, 0, 130 },
                { "enable-linger", 145, 145, 0, 141 },
                { "disable-linger", 145, 145, 0, 141 },
                { "terminate-user", 2, 145, 0, 128 },
                { "kill-user", 2, 145, 0, 137 },
                { "list-seats", 145, 1, 0, 136 },
                { "seat-status", 145, 145, 0, 132 },
                { "show-seat", 145, 145, 0, 132 },
                { "attach", 3, 145, 0, 142 },
                { "flush-devices", 145, 1, 0, 140 },
                { "terminate-seat", 2, 145, 0, 129 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, bus);
}
