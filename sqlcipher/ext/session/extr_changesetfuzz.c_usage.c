
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void usage(const char *argv0){
  fprintf(stderr, "Usage: %s FILENAME ?SEED N?\n", argv0);
  exit(1);
}
