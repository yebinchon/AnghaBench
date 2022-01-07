
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vbuf ;
typedef scalar_t__ adns_status ;
struct TYPE_2__ {int serial; int rname; int mname; } ;
typedef TYPE_1__ adns_rr_soa ;


 int CSP_ADDSTR (char*) ;
 scalar_t__ adns_s_ok ;
 scalar_t__ csp_domain (int *,int ) ;
 scalar_t__ csp_mailbox (int *,int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static adns_status cs_soa(vbuf *vb, const void *datap) {
  const adns_rr_soa *rrp= datap;
  char buf[20];
  int i;
  adns_status st;

  st= csp_domain(vb,rrp->mname); if (st) return st;
  CSP_ADDSTR(" ");
  st= csp_mailbox(vb,rrp->rname); if (st) return st;

  for (i=0; i<5; i++) {
    sprintf(buf," %lu",(&rrp->serial)[i]);
    CSP_ADDSTR(buf);
  }

  return adns_s_ok;
}
