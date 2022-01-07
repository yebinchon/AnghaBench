
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vbuf ;
typedef scalar_t__ adns_status ;
struct TYPE_2__ {scalar_t__ i; int str; } ;
typedef TYPE_1__ adns_rr_intstr ;


 int CSP_ADDSTR (char*) ;
 scalar_t__ adns_s_ok ;
 scalar_t__ csp_qstring (int *,int ,scalar_t__) ;

__attribute__((used)) static adns_status cs_txt(vbuf *vb, const void *datap) {
  const adns_rr_intstr *const *rrp= datap;
  const adns_rr_intstr *current;
  adns_status st;
  int spc;

  for (current= *rrp, spc=0; current->i >= 0; current++, spc=1) {
    if (spc) CSP_ADDSTR(" ");
    st= csp_qstring(vb,current->str,current->i); if (st) return st;
  }
  return adns_s_ok;
}
