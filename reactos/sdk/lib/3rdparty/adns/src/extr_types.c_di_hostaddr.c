
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_state ;
typedef int adns_rr_hostaddr ;


 int dip_hostaddr (int ,int const*,int const*) ;

__attribute__((used)) static int di_hostaddr(adns_state ads, const void *datap_a, const void *datap_b) {
  const adns_rr_hostaddr *ap= datap_a, *bp= datap_b;

  return dip_hostaddr(ads, ap,bp);
}
