
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int naddrs; void* addrs; int host; } ;
typedef TYPE_1__ adns_rr_hostaddr ;
typedef int adns_query ;


 int adns__makefinal_block (int ,void**,int) ;
 int adns__makefinal_str (int ,int *) ;

__attribute__((used)) static void mfp_hostaddr(adns_query qu, adns_rr_hostaddr *rrp) {
  void *tablev;

  adns__makefinal_str(qu,&rrp->host);
  tablev= rrp->addrs;
  adns__makefinal_block(qu, &tablev, rrp->naddrs*sizeof(*rrp->addrs));
  rrp->addrs= tablev;
}
