
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(char *this)
{
 (void) fprintf(stderr,
     "\tUsage: %s -b <base_dir> -l [nlevel] -d [ndir] -f [nfile]\n",
     this);
 exit(1);
}
