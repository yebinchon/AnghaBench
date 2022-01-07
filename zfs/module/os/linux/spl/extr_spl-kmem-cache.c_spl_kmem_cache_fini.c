
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int spl_kmem_cache_shrinker ;
 int spl_kmem_cache_taskq ;
 int spl_unregister_shrinker (int *) ;
 int taskq_destroy (int ) ;

void
spl_kmem_cache_fini(void)
{
 spl_unregister_shrinker(&spl_kmem_cache_shrinker);
 taskq_destroy(spl_kmem_cache_taskq);
}
