
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,char*) ;
 int stderr ;
 char* strerror (int ) ;

__attribute__((used)) static void error_out(const char *zText){
  fprintf(stderr, "%s: %s\n", zText, strerror(errno));
  exit(-1);
}
