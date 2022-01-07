
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage()
{
 (void)fprintf(stderr,
     "usage: touch [-acfm] [-r file] [-t time] file ...\n");
 exit(1);
}
