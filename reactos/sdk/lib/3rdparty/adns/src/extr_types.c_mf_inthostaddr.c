
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ha; } ;
typedef TYPE_1__ adns_rr_inthostaddr ;
typedef int adns_query ;


 int mfp_hostaddr (int ,int *) ;

__attribute__((used)) static void mf_inthostaddr(adns_query qu, void *datap) {
  adns_rr_inthostaddr *rrp= datap;

  mfp_hostaddr(qu,&rrp->ha);
}
