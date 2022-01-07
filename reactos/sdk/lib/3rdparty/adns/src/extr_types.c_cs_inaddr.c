
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbuf ;
struct in_addr {int dummy; } ;
typedef int adns_status ;


 int CSP_ADDSTR (char const*) ;
 int adns_s_ok ;
 int assert (char const*) ;
 char* inet_ntoa (struct in_addr const) ;

__attribute__((used)) static adns_status cs_inaddr(vbuf *vb, const void *datap) {
  const struct in_addr *rrp= datap, rr= *rrp;
  const char *ia;

  ia= inet_ntoa(rr); assert(ia);
  CSP_ADDSTR(ia);
  return adns_s_ok;
}
