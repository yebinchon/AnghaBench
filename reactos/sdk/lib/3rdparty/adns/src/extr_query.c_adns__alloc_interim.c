
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* adns_query ;
struct TYPE_4__ {size_t interim_allocd; } ;


 size_t MEM_ROUND (size_t) ;
 void* alloc_common (TYPE_1__*,size_t) ;

void *adns__alloc_interim(adns_query qu, size_t sz) {
  void *rv;

  sz= MEM_ROUND(sz);
  rv= alloc_common(qu,sz);
  if (!rv) return 0;
  qu->interim_allocd += sz;
  return rv;
}
