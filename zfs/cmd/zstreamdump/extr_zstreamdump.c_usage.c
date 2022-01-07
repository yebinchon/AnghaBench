
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 (void) fprintf(stderr, "usage: zstreamdump [-v] [-C] [-d] < file\n");
 (void) fprintf(stderr, "\t -v -- verbose\n");
 (void) fprintf(stderr, "\t -C -- suppress checksum verification\n");
 (void) fprintf(stderr, "\t -d -- dump contents of blocks modified, "
     "implies verbose\n");
 exit(1);
}
