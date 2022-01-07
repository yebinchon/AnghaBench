
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int member_3; int const member_4; } ;
typedef TYPE_1__ Verb ;
 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int systemctl_main(int argc, char *argv[]) {
        static const Verb verbs[] = {
                { "list-units", 163, 163, 162|161, 141 },
                { "list-unit-files", 163, 163, 0, 142 },
                { "list-sockets", 163, 163, 161, 144 },
                { "list-timers", 163, 163, 161, 143 },
                { "list-jobs", 163, 163, 161, 146 },
                { "list-machines", 163, 163, 161, 145 },
                { "clear-jobs", 163, 1, 161, 129 },
                { "cancel", 163, 163, 161, 159 },
                { "start", 2, 163, 161, 131 },
                { "stop", 2, 163, 161, 131 },
                { "condstop", 2, 163, 161, 131 },
                { "reload", 2, 163, 161, 131 },
                { "restart", 2, 163, 161, 131 },
                { "try-restart", 2, 163, 161, 131 },
                { "reload-or-restart", 2, 163, 161, 131 },
                { "reload-or-try-restart", 2, 163, 161, 131 },
                { "try-reload-or-restart", 2, 163, 161, 131 },
                { "force-reload", 2, 163, 161, 131 },
                { "condreload", 2, 163, 161, 131 },
                { "condrestart", 2, 163, 161, 131 },
                { "isolate", 2, 2, 161, 131 },
                { "kill", 2, 163, 161, 148 },
                { "clean", 2, 163, 161, 155 },
                { "is-active", 2, 163, 161, 157 },
                { "check", 2, 163, 161, 157 },
                { "is-failed", 2, 163, 161, 156 },
                { "show", 163, 163, 161, 135 },
                { "cat", 2, 163, 161, 158 },
                { "status", 163, 163, 161, 135 },
                { "help", 163, 163, 161, 135 },
                { "daemon-reload", 163, 1, 161, 154 },
                { "daemon-reexec", 163, 1, 161, 154 },
                { "show-environment", 163, 1, 161, 134 },
                { "set-environment", 2, 163, 161, 137 },
                { "unset-environment", 2, 163, 161, 137 },
                { "import-environment", 163, 163, 161, 150 },
                { "halt", 163, 1, 161, 132 },
                { "poweroff", 163, 1, 161, 132 },
                { "reboot", 163, 2, 161, 132 },
                { "kexec", 163, 1, 161, 132 },
                { "suspend", 163, 1, 161, 132 },
                { "hibernate", 163, 1, 161, 132 },
                { "hybrid-sleep", 163, 1, 161, 132 },
                { "suspend-then-hibernate",163, 1, 161, 132 },
                { "default", 163, 1, 161, 133 },
                { "rescue", 163, 1, 161, 132 },
                { "emergency", 163, 1, 161, 132 },
                { "exit", 163, 2, 161, 133 },
                { "reset-failed", 163, 163, 161, 139 },
                { "enable", 2, 163, 0, 152 },
                { "disable", 2, 163, 0, 152 },
                { "is-enabled", 2, 163, 0, 128 },
                { "reenable", 2, 163, 0, 152 },
                { "preset", 2, 163, 0, 152 },
                { "preset-all", 163, 1, 0, 140 },
                { "mask", 2, 163, 0, 152 },
                { "unmask", 2, 163, 0, 152 },
                { "link", 2, 163, 0, 152 },
                { "revert", 2, 163, 0, 152 },
                { "switch-root", 2, 163, 161, 130 },
                { "list-dependencies", 163, 2, 161, 147 },
                { "set-default", 2, 2, 0, 138 },
                { "get-default", 163, 1, 0, 151 },
                { "set-property", 3, 163, 161, 136 },
                { "is-system-running", 163, 1, 0, 149 },
                { "add-wants", 3, 163, 0, 160 },
                { "add-requires", 3, 163, 0, 160 },
                { "edit", 2, 163, 161, 153 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, ((void*)0));
}
