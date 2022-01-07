
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vbuf ;
typedef int adns_status ;
struct TYPE_8__ {int sa_family; } ;
struct TYPE_6__ {int sin_family; int sin_addr; } ;
struct TYPE_7__ {TYPE_3__ sa; TYPE_1__ inet; } ;
struct TYPE_9__ {TYPE_2__ addr; } ;
typedef TYPE_4__ adns_rr_addr ;



 int CSP_ADDSTR (char const*) ;
 int adns_s_ok ;
 int assert (char const*) ;
 char* inet_ntoa (int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static adns_status csp_addr(vbuf *vb, const adns_rr_addr *rrp) {
  const char *ia;
  static char buf[30];

  switch (rrp->addr.inet.sin_family) {
  case 128:
    CSP_ADDSTR("INET ");
    ia= inet_ntoa(rrp->addr.inet.sin_addr); assert(ia);
    CSP_ADDSTR(ia);
    break;
  default:
    sprintf(buf,"AF=%u",rrp->addr.sa.sa_family);
    CSP_ADDSTR(buf);
    break;
  }
  return adns_s_ok;
}
