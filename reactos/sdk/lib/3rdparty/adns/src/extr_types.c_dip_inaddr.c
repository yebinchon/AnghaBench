
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct in_addr {int dummy; } ;
typedef TYPE_1__* adns_state ;
struct TYPE_4__ {int nsortlist; } ;


 int search_sortlist (TYPE_1__*,struct in_addr) ;

__attribute__((used)) static int dip_inaddr(adns_state ads, struct in_addr a, struct in_addr b) {
  int ai, bi;

  if (!ads->nsortlist) return 0;

  ai= search_sortlist(ads,a);
  bi= search_sortlist(ads,b);
  return bi<ai;
}
