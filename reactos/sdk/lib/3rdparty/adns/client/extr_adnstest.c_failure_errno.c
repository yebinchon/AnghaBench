
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,int) ;
 int quitnow (int) ;
 int stderr ;

__attribute__((used)) static void failure_errno(const char *what, int errnoval) {
  fprintf(stderr,"adns failure: %s: errno=%d\n",what,errnoval);
  quitnow(2);
}
