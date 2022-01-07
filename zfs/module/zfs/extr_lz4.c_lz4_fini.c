
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kmem_cache_destroy (int *) ;
 int * lz4_cache ;

void
lz4_fini(void)
{
 if (lz4_cache) {
  kmem_cache_destroy(lz4_cache);
  lz4_cache = ((void*)0);
 }
}
