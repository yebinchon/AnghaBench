
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* array; } ;
typedef TYPE_2__ adns_rr_intstrpair ;
typedef int adns_query ;
struct TYPE_3__ {int str; } ;


 int adns__makefinal_str (int ,int *) ;

__attribute__((used)) static void mf_intstrpair(adns_query qu, void *datap) {
  adns_rr_intstrpair *rrp= datap;

  adns__makefinal_str(qu,&rrp->array[0].str);
  adns__makefinal_str(qu,&rrp->array[1].str);
}
