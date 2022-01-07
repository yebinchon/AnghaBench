
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* qu; int * dgram; } ;
typedef TYPE_2__ parseinfo ;
typedef int byte ;
typedef scalar_t__ adns_status ;
struct TYPE_8__ {int i; int str; } ;
typedef TYPE_3__ adns_rr_intstr ;
struct TYPE_6__ {int flags; } ;


 int GET_W (int,int) ;
 int adns_qf_quoteok_anshost ;
 scalar_t__ adns_s_invaliddata ;
 scalar_t__ adns_s_ok ;
 scalar_t__ pap_domain (TYPE_2__ const*,int*,int,int *,int ) ;
 int pdf_quoteok ;

__attribute__((used)) static adns_status pa_mx_raw(const parseinfo *pai, int cbyte, int max, void *datap) {
  const byte *dgram= pai->dgram;
  adns_rr_intstr *rrp= datap;
  adns_status st;
  int pref;

  if (cbyte+2 > max) return adns_s_invaliddata;
  GET_W(cbyte,pref);
  rrp->i= pref;
  st= pap_domain(pai, &cbyte, max, &rrp->str,
   pai->qu->flags & adns_qf_quoteok_anshost ? pdf_quoteok : 0);
  if (st) return st;

  if (cbyte != max) return adns_s_invaliddata;
  return adns_s_ok;
}
