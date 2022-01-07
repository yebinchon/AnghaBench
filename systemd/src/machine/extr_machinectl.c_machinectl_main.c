
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sd_bus ;
struct TYPE_3__ {char* member_0; int const member_1; int const member_2; int const member_4; int member_3; } ;
typedef TYPE_1__ Verb ;
 int dispatch_verb (int,char**,TYPE_1__ const*,int *) ;
__attribute__((used)) static int machinectl_main(int argc, char *argv[], sd_bus *bus) {

        static const Verb verbs[] = {
                { "help", 159, 159, 0, 149 },
                { "list", 159, 1, 158, 143 },
                { "list-images", 159, 1, 0, 144 },
                { "status", 2, 159, 0, 130 },
                { "image-status", 159, 159, 0, 131 },
                { "show", 159, 159, 0, 130 },
                { "show-image", 159, 159, 0, 131 },
                { "terminate", 2, 159, 0, 128 },
                { "reboot", 2, 159, 0, 136 },
                { "poweroff", 2, 159, 0, 140 },
                { "stop", 2, 159, 0, 140 },
                { "kill", 2, 159, 0, 145 },
                { "login", 159, 2, 0, 141 },
                { "shell", 159, 159, 0, 132 },
                { "bind", 3, 4, 0, 157 },
                { "copy-to", 3, 4, 0, 153 },
                { "copy-from", 3, 4, 0, 153 },
                { "remove", 2, 159, 0, 135 },
                { "rename", 3, 3, 0, 134 },
                { "clone", 3, 3, 0, 154 },
                { "read-only", 2, 3, 0, 137 },
                { "start", 2, 159, 0, 129 },
                { "enable", 2, 159, 0, 152 },
                { "disable", 2, 159, 0, 152 },
                { "import-tar", 2, 3, 0, 146 },
                { "import-raw", 2, 3, 0, 147 },
                { "import-fs", 2, 3, 0, 148 },
                { "export-tar", 2, 3, 0, 150 },
                { "export-raw", 2, 3, 0, 151 },
                { "pull-tar", 2, 3, 0, 138 },
                { "pull-raw", 2, 3, 0, 139 },
                { "list-transfers", 159, 1, 0, 142 },
                { "cancel-transfer", 2, 159, 0, 156 },
                { "set-limit", 2, 3, 0, 133 },
                { "clean", 159, 1, 0, 155 },
                {}
        };

        return dispatch_verb(argc, argv, verbs, bus);
}
