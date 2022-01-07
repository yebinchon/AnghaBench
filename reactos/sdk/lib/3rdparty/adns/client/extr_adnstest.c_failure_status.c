
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_status ;


 char* adns_strerror (int ) ;
 int fprintf (int ,char*,char const*,char*) ;
 int quitnow (int) ;
 int stderr ;

__attribute__((used)) static void failure_status(const char *what, adns_status st) {
  fprintf(stderr,"adns failure: %s: %s\n",what,adns_strerror(st));
  quitnow(2);
}
