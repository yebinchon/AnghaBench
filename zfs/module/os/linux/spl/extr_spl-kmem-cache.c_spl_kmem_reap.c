
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shrink_control {int gfp_mask; int nr_to_scan; } ;


 int GFP_KERNEL ;
 int KMC_REAP_CHUNK ;
 int __spl_kmem_cache_generic_shrinker (int *,struct shrink_control*) ;

void
spl_kmem_reap(void)
{
 struct shrink_control sc;

 sc.nr_to_scan = KMC_REAP_CHUNK;
 sc.gfp_mask = GFP_KERNEL;

 (void) __spl_kmem_cache_generic_shrinker(((void*)0), &sc);
}
