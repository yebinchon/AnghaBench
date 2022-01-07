
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skc_flags; } ;
typedef TYPE_1__ spl_kmem_cache_t ;
typedef int gfp_t ;


 int ASSERT (int ) ;
 int GFP_KERNEL ;
 int ISP2 (int) ;
 int IS_P2ALIGNED (void*,int ) ;
 int KMC_KMEM ;
 int KMC_KVMEM ;
 int PAGE_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_HIGHMEM ;
 scalar_t__ __get_free_pages (int,int ) ;
 void* __vmalloc (int,int,int ) ;
 int get_order (int) ;
 int kmem_flags_convert (int) ;
 void* spl_kvmalloc (int,int) ;

__attribute__((used)) static void *
kv_alloc(spl_kmem_cache_t *skc, int size, int flags)
{
 gfp_t lflags = kmem_flags_convert(flags);
 void *ptr;

 if (skc->skc_flags & KMC_KMEM) {
  ASSERT(ISP2(size));
  ptr = (void *)__get_free_pages(lflags, get_order(size));
 } else if (skc->skc_flags & KMC_KVMEM) {
  ptr = spl_kvmalloc(size, lflags);
 } else {
  if ((lflags & GFP_KERNEL) == GFP_KERNEL) {
   ptr = spl_kvmalloc(size, lflags);
  } else {
   ptr = __vmalloc(size, lflags | __GFP_HIGHMEM,
       PAGE_KERNEL);
  }
 }


 ASSERT(IS_P2ALIGNED(ptr, PAGE_SIZE));

 return (ptr);
}
