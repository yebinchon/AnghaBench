
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int parseinfo ;
typedef scalar_t__ adns_status ;


 scalar_t__ adns_s_invaliddata ;
 scalar_t__ adns_s_ok ;
 scalar_t__ pap_domain (int const*,int*,int,char**,int ) ;
 int pdf_quoteok ;

__attribute__((used)) static adns_status pa_dom_raw(const parseinfo *pai, int cbyte, int max, void *datap) {
  char **rrp= datap;
  adns_status st;

  st= pap_domain(pai, &cbyte, max, rrp, pdf_quoteok);
  if (st) return st;

  if (cbyte != max) return adns_s_invaliddata;
  return adns_s_ok;
}
