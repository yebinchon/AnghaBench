
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
typedef TYPE_1__* adns_query ;
struct TYPE_3__ {scalar_t__ interim_allocd; int * final_allocspace; } ;


 size_t MEM_ROUND (size_t) ;
 int assert (int) ;

void *adns__alloc_final(adns_query qu, size_t sz) {




  void *rp;

  sz= MEM_ROUND(sz);
  rp= qu->final_allocspace;
  assert(rp);
  qu->interim_allocd -= sz;
  assert(qu->interim_allocd>=0);
  qu->final_allocspace= (byte*)rp + sz;
  return rp;
}
