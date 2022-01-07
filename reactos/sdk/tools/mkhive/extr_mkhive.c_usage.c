
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void usage(void)
{
    printf("Usage: mkhive [-?] -h:hive1[,hiveN...] [-u] -d:<dstdir> <inffiles>\n\n"
           "  -h:hiveN  - Comma-separated list of hives to create. Possible values are:\n"
           "              SETUPREG, SYSTEM, SOFTWARE, DEFAULT, SAM, SECURITY, BCD.\n"
           "  -u        - Generate file names in uppercase (default: lowercase) (TEMPORARY FLAG!).\n"
           "  -d:dstdir - The binary hive files are created in this directory.\n"
           "  inffiles  - List of INF files with full path.\n"
           "  -?        - Displays this help screen.\n");
}
