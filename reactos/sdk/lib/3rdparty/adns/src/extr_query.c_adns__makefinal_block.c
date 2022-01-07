
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_query ;


 void* adns__alloc_final (int ,size_t) ;
 int memcpy (void*,void*,size_t) ;

void adns__makefinal_block(adns_query qu, void **blpp, size_t sz) {
  void *before, *after;

  before= *blpp;
  if (!before) return;
  after= adns__alloc_final(qu,sz);
  memcpy(after,before, (size_t) sz);
  *blpp= after;
}
