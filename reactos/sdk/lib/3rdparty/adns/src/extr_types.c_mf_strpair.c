
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * array; } ;
typedef TYPE_1__ adns_rr_strpair ;
typedef int adns_query ;


 int adns__makefinal_str (int ,int *) ;

__attribute__((used)) static void mf_strpair(adns_query qu, void *datap) {
  adns_rr_strpair *rrp= datap;

  adns__makefinal_str(qu,&rrp->array[0]);
  adns__makefinal_str(qu,&rrp->array[1]);
}
