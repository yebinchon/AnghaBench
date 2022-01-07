
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULT_BUS_PATH ;
 int printf (char*,char*,char*) ;
 char* program_invocation_short_name ;

__attribute__((used)) static int help(void) {

        printf("%s [OPTIONS...]\n\n"
               "STDIO or socket-activatable proxy to a given DBus endpoint.\n\n"
               "  -h --help              Show this help\n"
               "     --version           Show package version\n"
               "  -p --bus-path=PATH     Path to the kernel bus (default: %s)\n"
               "  -M --machine=MACHINE   Name of machine to connect to\n",
               program_invocation_short_name, DEFAULT_BUS_PATH);

        return 0;
}
