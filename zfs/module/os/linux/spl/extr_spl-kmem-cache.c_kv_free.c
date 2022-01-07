
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int skc_flags; } ;
typedef TYPE_2__ spl_kmem_cache_t ;
struct TYPE_7__ {TYPE_1__* reclaim_state; } ;
struct TYPE_5__ {int reclaimed_slab; } ;


 int ASSERT (int ) ;
 int ISP2 (int) ;
 int IS_P2ALIGNED (void*,int ) ;
 int KMC_KMEM ;
 int PAGE_SHIFT ;
 int PAGE_SIZE ;
 TYPE_4__* current ;
 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int spl_kmem_free_impl (void*,int) ;

__attribute__((used)) static void
kv_free(spl_kmem_cache_t *skc, void *ptr, int size)
{
 ASSERT(IS_P2ALIGNED(ptr, PAGE_SIZE));
 if (current->reclaim_state)
  current->reclaim_state->reclaimed_slab += size >> PAGE_SHIFT;

 if (skc->skc_flags & KMC_KMEM) {
  ASSERT(ISP2(size));
  free_pages((unsigned long)ptr, get_order(size));
 } else {
  spl_kmem_free_impl(ptr, size);
 }
}
