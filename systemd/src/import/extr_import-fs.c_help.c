
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;
 char* program_invocation_short_name ;

__attribute__((used)) static int help(int argc, char *argv[], void *userdata) {

        printf("%s [OPTIONS...] {COMMAND} ...\n\n"
               "Import container images from a file system.\n\n"
               "  -h --help                   Show this help\n"
               "     --version                Show package version\n"
               "     --force                  Force creation of image\n"
               "     --image-root=PATH        Image root directory\n"
               "     --read-only              Create a read-only image\n\n"
               "Commands:\n"
               "  run DIRECTORY [NAME]             Import a directory\n",
               program_invocation_short_name);

        return 0;
}
