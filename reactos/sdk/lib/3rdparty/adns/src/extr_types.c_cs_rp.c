
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vbuf ;
typedef scalar_t__ adns_status ;
struct TYPE_2__ {int * array; } ;
typedef TYPE_1__ adns_rr_strpair ;


 int CSP_ADDSTR (char*) ;
 scalar_t__ adns_s_ok ;
 scalar_t__ csp_domain (int *,int ) ;
 scalar_t__ csp_mailbox (int *,int ) ;

__attribute__((used)) static adns_status cs_rp(vbuf *vb, const void *datap) {
  const adns_rr_strpair *rrp= datap;
  adns_status st;

  st= csp_mailbox(vb,rrp->array[0]); if (st) return st;
  CSP_ADDSTR(" ");
  st= csp_domain(vb,rrp->array[1]); if (st) return st;

  return adns_s_ok;
}
