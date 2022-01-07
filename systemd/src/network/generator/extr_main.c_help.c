
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* program_invocation_short_name ;

__attribute__((used)) static int help(void) {
        printf("%s [OPTIONS...] [-- KERNEL_CMDLINE]\n"
               "  -h --help                       Show this help\n"
               "     --version                    Show package version\n"
               "     --root=PATH                  Operate on an alternate filesystem root\n"
               , program_invocation_short_name
               );

        return 0;
}
