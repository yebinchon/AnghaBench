
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_query ;


 int MEM_ROUND (size_t) ;
 void* alloc_common (int ,int ) ;

void *adns__alloc_mine(adns_query qu, size_t sz) {
  return alloc_common(qu,MEM_ROUND(sz));
}
