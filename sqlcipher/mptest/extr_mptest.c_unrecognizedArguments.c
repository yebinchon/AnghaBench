
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void unrecognizedArguments(
  const char *argv0,
  int nArg,
  char **azArg
){
  int i;
  fprintf(stderr,"%s: unrecognized arguments:", argv0);
  for(i=0; i<nArg; i++){
    fprintf(stderr," %s", azArg[i]);
  }
  fprintf(stderr,"\n");
  exit(1);
}
