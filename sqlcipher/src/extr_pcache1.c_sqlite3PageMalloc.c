
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 void* pcache1Alloc (int) ;

void *sqlite3PageMalloc(int sz){
  assert( sz<=65536+8 );
  return pcache1Alloc(sz);
}
