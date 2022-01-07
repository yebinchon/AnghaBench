
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int adns_state ;


 int addserver (int ,struct in_addr) ;
 int adns__debug (int ,int,int ,char*,int ) ;
 int configparseerr (int ,char const*,int,char*,char const*) ;
 int inet_aton (char const*,struct in_addr*) ;
 int inet_ntoa (struct in_addr) ;

__attribute__((used)) static void ccf_nameserver(adns_state ads, const char *fn, int lno, const char *buf) {
  struct in_addr ia;

  if (!inet_aton(buf,&ia)) {
    configparseerr(ads,fn,lno,"invalid nameserver address `%s'",buf);
    return;
  }
  adns__debug(ads,-1,0,"using nameserver %s",inet_ntoa(ia));
  addserver(ads,ia);
}
