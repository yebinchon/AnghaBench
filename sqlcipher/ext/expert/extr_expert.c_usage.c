
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(char **argv){
  fprintf(stderr, "\n");
  fprintf(stderr, "Usage %s ?OPTIONS? DATABASE\n", argv[0]);
  fprintf(stderr, "\n");
  fprintf(stderr, "Options are:\n");
  fprintf(stderr, "  -sql SQL   (analyze SQL statements passed as argument)\n");
  fprintf(stderr, "  -file FILE (read SQL statements from file FILE)\n");
  fprintf(stderr, "  -verbose LEVEL (integer verbosity level. default 1)\n");
  fprintf(stderr, "  -sample PERCENT (percent of db to sample. default 100)\n");
  exit(-1);
}
