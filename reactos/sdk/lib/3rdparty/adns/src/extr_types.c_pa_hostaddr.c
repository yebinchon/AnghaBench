
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parseinfo ;
typedef scalar_t__ adns_status ;
typedef int adns_rr_hostaddr ;


 scalar_t__ adns_s_invaliddata ;
 scalar_t__ adns_s_ok ;
 scalar_t__ pap_hostaddr (int const*,int*,int,int *) ;

__attribute__((used)) static adns_status pa_hostaddr(const parseinfo *pai, int cbyte, int max, void *datap) {
  adns_rr_hostaddr *rrp= datap;
  adns_status st;

  st= pap_hostaddr(pai, &cbyte, max, rrp);
  if (st) return st;
  if (cbyte != max) return adns_s_invaliddata;

  return adns_s_ok;
}
