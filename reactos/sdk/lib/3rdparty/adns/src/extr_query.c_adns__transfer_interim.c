
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int byte ;
typedef int allocnode ;
typedef TYPE_1__* adns_query ;
struct TYPE_4__ {size_t interim_allocd; scalar_t__ expires; int allocations; int final_allocspace; } ;


 int LIST_LINK_TAIL (int ,int *) ;
 int LIST_UNLINK (int ,int *) ;
 int * MEM_ROUND (size_t) ;
 int assert (int) ;

void adns__transfer_interim(adns_query from, adns_query to, void *block, size_t sz) {
  allocnode *an;

  if (!block) return;
  an= (void*)((byte*)block - MEM_ROUND(sizeof(*an)));

  assert(!to->final_allocspace);
  assert(!from->final_allocspace);

  LIST_UNLINK(from->allocations,an);
  LIST_LINK_TAIL(to->allocations,an);

  sz= MEM_ROUND(sz);
  from->interim_allocd -= sz;
  to->interim_allocd += sz;

  if (to->expires > from->expires) to->expires= from->expires;
}
