
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* program_invocation_short_name ;

__attribute__((used)) static int help(int argc, char *argv[], void *userdata) {

        printf("%s [COMMAND] [OPTIONS...]\n"
               "\n"
               "Mark the boot process as good or bad.\n\n"
               "  -h --help          Show this help\n"
               "     --version       Print version\n"
               "     --path=PATH     Path to the $BOOT partition (may be used multiple times)\n"
               "\n"
               "Commands:\n"
               "     good            Mark this boot as good\n"
               "     bad             Mark this boot as bad\n"
               "     indeterminate   Undo any marking as good or bad\n",
               program_invocation_short_name);

        return 0;
}
