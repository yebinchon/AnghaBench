
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stdout ;
 char* zHelp ;

__attribute__((used)) static void showHelp(void){
  fprintf(stdout, "%s", zHelp);
  exit(1);
}
