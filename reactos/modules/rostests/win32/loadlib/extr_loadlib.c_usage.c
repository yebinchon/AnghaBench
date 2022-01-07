
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TARGET ;
 int dprintf (char*,...) ;

int usage(const char* appName)
{
    dprintf("USAGE: %s libname [libname ...] [unicode]|[ansi] [loop][recurse]\n", appName);
    dprintf("\tWhere libname(s) is one or more libraries to load.\n");
    dprintf("\t[unicode] - perform tests using UNICODE api calls\n");
    dprintf("\t[ansi] - perform tests using ANSI api calls\n");
    dprintf("\t    default is %s\n", TARGET);
    dprintf("\t[loop] - run test process in continuous loop\n");
    dprintf("\t[recurse] - load libraries recursively rather than sequentually\n");
    dprintf("\t[debug] - enable debug mode (unused)\n");
    dprintf("\t[verbose] - enable verbose output (unused)\n");
    return 0;
}
