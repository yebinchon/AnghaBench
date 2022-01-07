
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int quitnow (int) ;
 int stderr ;
 int usage () ;

__attribute__((used)) static void usageerr(const char *why) {
  fprintf(stderr,"adnsresfilter: bad usage: %s\n",why);
  usage();
  quitnow(1);
}
