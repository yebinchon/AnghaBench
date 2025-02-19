
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vbuf ;
typedef scalar_t__ adns_status ;
struct TYPE_4__ {TYPE_1__* array; } ;
typedef TYPE_2__ adns_rr_intstrpair ;
struct TYPE_3__ {int i; int str; } ;


 int CSP_ADDSTR (char*) ;
 scalar_t__ adns_s_ok ;
 scalar_t__ csp_qstring (int *,int ,int ) ;

__attribute__((used)) static adns_status cs_hinfo(vbuf *vb, const void *datap) {
  const adns_rr_intstrpair *rrp= datap;
  adns_status st;

  st= csp_qstring(vb,rrp->array[0].str,rrp->array[0].i); if (st) return st;
  CSP_ADDSTR(" ");
  st= csp_qstring(vb,rrp->array[1].str,rrp->array[1].i); if (st) return st;
  return adns_s_ok;
}
