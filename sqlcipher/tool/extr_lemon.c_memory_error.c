
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void memory_error(void){
  fprintf(stderr,"Out of memory.  Aborting...\n");
  exit(1);
}
