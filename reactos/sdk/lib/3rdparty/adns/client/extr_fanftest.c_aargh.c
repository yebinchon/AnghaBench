
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char const*,char*,int) ;
 char* progname ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void aargh(const char *msg) {
  fprintf(stderr, "%s: %s: %s (%d)\n", progname, msg,
   strerror(errno) ? strerror(errno) : "Unknown error", errno);
  exit(1);
}
