
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

__attribute__((used)) static void ambiguous_option_error(const char *zArg){
  fprintf(stderr, "Option is ambiguous: %s\n", zArg);
  exit(1);
}
