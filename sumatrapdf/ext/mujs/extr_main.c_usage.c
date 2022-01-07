
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 fprintf(stderr, "Usage: mujs [options] [script [scriptArgs*]]\n");
 fprintf(stderr, "\t-i: Enter interactive prompt after running code.\n");
 fprintf(stderr, "\t-s: Check strictness.\n");
 exit(1);
}
