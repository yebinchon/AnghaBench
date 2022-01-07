
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vbuf ;
typedef int adns_status ;
struct TYPE_2__ {int i; int str; } ;
typedef TYPE_1__ adns_rr_intstr ;


 int CSP_ADDSTR (char*) ;
 int csp_domain (int *,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static adns_status cs_inthost(vbuf *vb, const void *datap) {
  const adns_rr_intstr *rrp= datap;
  char buf[10];

  sprintf(buf,"%u ",rrp->i);
  CSP_ADDSTR(buf);
  return csp_domain(vb,rrp->str);
}
