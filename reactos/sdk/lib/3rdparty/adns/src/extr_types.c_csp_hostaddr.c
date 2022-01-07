
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vbuf ;
typedef scalar_t__ adns_status ;
struct TYPE_3__ {int astatus; int naddrs; int * addrs; int host; } ;
typedef TYPE_1__ adns_rr_hostaddr ;


 int CSP_ADDSTR (char*) ;
 char* adns_errabbrev (int) ;
 char* adns_errtypeabbrev (int) ;
 scalar_t__ adns_s_ok ;
 char* adns_strerror (int) ;
 scalar_t__ csp_addr (int *,int *) ;
 scalar_t__ csp_domain (int *,int ) ;
 scalar_t__ csp_qstring (int *,char const*,int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static adns_status csp_hostaddr(vbuf *vb, const adns_rr_hostaddr *rrp) {
  const char *errstr;
  adns_status st;
  char buf[20];
  int i;

  st= csp_domain(vb,rrp->host); if (st) return st;

  CSP_ADDSTR(" ");
  CSP_ADDSTR(adns_errtypeabbrev(rrp->astatus));

  sprintf(buf," %d ",rrp->astatus);
  CSP_ADDSTR(buf);

  CSP_ADDSTR(adns_errabbrev(rrp->astatus));
  CSP_ADDSTR(" ");

  errstr= adns_strerror(rrp->astatus);
  st= csp_qstring(vb,errstr,(int)strlen(errstr)); if (st) return st;

  if (rrp->naddrs >= 0) {
    CSP_ADDSTR(" (");
    for (i=0; i<rrp->naddrs; i++) {
      CSP_ADDSTR(" ");
      st= csp_addr(vb,&rrp->addrs[i]);
    }
    CSP_ADDSTR(" )");
  } else {
    CSP_ADDSTR(" ?");
  }
  return adns_s_ok;
}
