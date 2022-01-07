
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int quitnow (int) ;
 int stderr ;

__attribute__((used)) static void usageerr(const char *why) {
  fprintf(stderr,
   "bad usage: %s\n"
   "usage: adnstest [-<initflagsnum>[,<owninitflags>]] [/<initstring>]\n"
   "              [ :<typenum>,... ]\n"
   "              [ [<queryflagsnum>[,<ownqueryflags>]/]<domain> ... ]\n"
   "initflags:   p  use poll(2) instead of select(2)\n"
   "             s  use adns_wait with specified query, instead of 0\n"
   "queryflags:  a  print status abbrevs instead of strings\n"
   "exit status:  0 ok (though some queries may have failed)\n"
   "              1 used by test harness to indicate test failed\n"
   "              2 unable to submit or init or some such\n"
   "              3 unexpected failure\n"
   "              4 usage error\n"
   "              5 operation not supported on this system\n",
   why);
  quitnow(4);
}
