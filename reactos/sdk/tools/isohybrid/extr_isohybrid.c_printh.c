
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FMT ;
 int printf (char*,...) ;
 int usage () ;

void
printh(void)
{


    usage();

    printf("\n");
    printf("Options:\n");
    printf("%-20s %s\n", "   -h <X>", "Number of geometry heads (default 64)");
    printf("%-20s %s\n", "   -s <X>", "Number of geometry sectors (default 32)");
    printf("%-20s %s\n", "   -e --entry", "Specify partition entry number (1-4)");
    printf("%-20s %s\n", "   -o --offset", "Specify partition offset (default 0)");
    printf("%-20s %s\n", "   -t --type", "Specify partition type (default 0x17)");
    printf("%-20s %s\n", "   -i --id", "Specify MBR ID (default random)");




    printf("%-20s %s\n", "   -b --mbr <PATH>", "Load MBR from PATH");

    printf("\n");
    printf("%-20s %s\n", "   --forcehd0", "Assume we are loaded as disk ID 0");
    printf("%-20s %s\n", "   --ctrlhd0", "Assume disk ID 0 if the Ctrl key is pressed");
    printf("%-20s %s\n", "   --partok", "Allow booting from within a partition");

    printf("\n");
    printf("%-20s %s\n", "   -? --help", "Display this help");
    printf("%-20s %s\n", "   -v --verbose", "Display verbose output");
    printf("%-20s %s\n", "   -V --version", "Display version information");

    printf("\n");
    printf("Report bugs to <pj.pandit@yahoo.co.in>\n");
}
