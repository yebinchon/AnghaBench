
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vbuf ;
typedef int adns_status ;


 int csp_domain (int *,char const* const) ;

__attribute__((used)) static adns_status cs_domain(vbuf *vb, const void *datap) {
  const char *const *domainp= datap;
  return csp_domain(vb,*domainp);
}
