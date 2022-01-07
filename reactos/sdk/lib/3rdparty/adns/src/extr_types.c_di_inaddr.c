
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
typedef int adns_state ;


 int dip_inaddr (int ,struct in_addr const,struct in_addr const) ;

__attribute__((used)) static int di_inaddr(adns_state ads, const void *datap_a, const void *datap_b) {
  const struct in_addr *ap= datap_a, *bp= datap_b;

  return dip_inaddr(ads,*ap,*bp);
}
