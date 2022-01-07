
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int parseinfo ;
typedef scalar_t__ adns_status ;
struct TYPE_2__ {int * array; } ;
typedef TYPE_1__ adns_rr_strpair ;


 scalar_t__ adns_s_invaliddata ;
 scalar_t__ adns_s_ok ;
 scalar_t__ pap_domain (int const*,int*,int,int *,int ) ;
 scalar_t__ pap_mailbox (int const*,int*,int,int *) ;
 int pdf_quoteok ;

__attribute__((used)) static adns_status pa_rp(const parseinfo *pai, int cbyte, int max, void *datap) {
  adns_rr_strpair *rrp= datap;
  adns_status st;

  st= pap_mailbox(pai, &cbyte, max, &rrp->array[0]);
  if (st) return st;

  st= pap_domain(pai, &cbyte, max, &rrp->array[1], pdf_quoteok);
  if (st) return st;

  if (cbyte != max) return adns_s_invaliddata;
  return adns_s_ok;
}
