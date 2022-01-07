
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ddt_cache ;
 int ddt_entry_cache ;
 int kmem_cache_destroy (int ) ;

void
ddt_fini(void)
{
 kmem_cache_destroy(ddt_entry_cache);
 kmem_cache_destroy(ddt_cache);
}
