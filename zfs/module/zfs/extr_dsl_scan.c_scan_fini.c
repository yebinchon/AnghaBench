
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SPA_DVAS_PER_BP ;
 int kmem_cache_destroy (int ) ;
 int * sio_cache ;

void
scan_fini(void)
{
 for (int i = 0; i < SPA_DVAS_PER_BP; i++) {
  kmem_cache_destroy(sio_cache[i]);
 }
}
