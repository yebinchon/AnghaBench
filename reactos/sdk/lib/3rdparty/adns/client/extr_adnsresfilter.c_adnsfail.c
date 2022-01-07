
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*,char*) ;
 int quitnow (int) ;
 int stderr ;
 char* strerror (int) ;

__attribute__((used)) static void adnsfail(const char *what, int e) {
  fprintf(stderr,"adnsresfilter: adns call failed: %s: %s\n",what,strerror(e));
  quitnow(2);
}
