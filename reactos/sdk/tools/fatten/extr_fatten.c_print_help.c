
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void print_help(const char* name)
{
    printf("\n");
    printf("Syntax: %s image_file [list of commands]\n\n", name);



    printf("Commands:\n");


    printf("    -format <sectors> [<custom header label>]\n"
           "            Formats the disk image.\n");
    printf("    -boot <sector file>\n"
           "            Writes a new boot sector.\n");
    printf("    -add <src path> <dst path>\n"
           "            Copies an external file or directory into the image.\n");
    printf("    -extract <src path> <dst path>\n"
           "            Copies a file or directory from the image into an external file\n"
           "            or directory.\n");
    printf("    -move <src path> <new path>\n"
           "            Moves/renames a file or directory.\n");
    printf("    -copy <src path> <new path>\n"
           "            Copies a file or directory.\n");
    printf("    -mkdir <src path> <new path>\n"
           "            Creates a directory.\n");
    printf("    -rmdir <src path> <new path>\n"
           "            Creates a directory.\n");
    printf("    -list [<pattern>]\n"
           "            Lists files a directory (defaults to root).\n");
}
