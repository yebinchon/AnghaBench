
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* program_invocation_short_name ;

__attribute__((used)) static int help(void) {
        printf("%s settle [OPTIONS]\n\n"
               "Wait for pending udev events.\n\n"
               "  -h --help                 Show this help\n"
               "  -V --version              Show package version\n"
               "  -t --timeout=SEC          Maximum time to wait for events\n"
               "  -E --exit-if-exists=FILE  Stop waiting if file exists\n"
               , program_invocation_short_name);

        return 0;
}
