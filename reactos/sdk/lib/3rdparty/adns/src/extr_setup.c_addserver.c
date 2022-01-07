
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct in_addr {scalar_t__ s_addr; } ;
struct server {struct in_addr addr; } ;
typedef TYPE_1__* adns_state ;
struct TYPE_5__ {int nservers; struct server* servers; } ;


 int MAXSERVERS ;
 int adns__debug (TYPE_1__*,int,int ,char*,int ) ;
 int adns__diag (TYPE_1__*,int,int ,char*,int ) ;
 int inet_ntoa (struct in_addr) ;

__attribute__((used)) static void addserver(adns_state ads, struct in_addr addr) {
  int i;
  struct server *ss;

  for (i=0; i<ads->nservers; i++) {
    if (ads->servers[i].addr.s_addr == addr.s_addr) {
      adns__debug(ads,-1,0,"duplicate nameserver %s ignored",inet_ntoa(addr));
      return;
    }
  }

  if (ads->nservers>=MAXSERVERS) {
    adns__diag(ads,-1,0,"too many nameservers, ignoring %s",inet_ntoa(addr));
    return;
  }

  ss= ads->servers+ads->nservers;
  ss->addr= addr;
  ads->nservers++;
}
