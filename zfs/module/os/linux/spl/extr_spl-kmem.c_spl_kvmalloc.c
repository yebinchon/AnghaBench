
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int GFP_KERNEL ;
 int NUMA_NO_NODE ;
 int PAGE_ALLOC_COSTLY_ORDER ;
 int PAGE_KERNEL ;
 size_t PAGE_SIZE ;
 int __GFP_HIGHMEM ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __GFP_RECLAIM ;
 int __GFP_RETRY_MAYFAIL ;
 void* __vmalloc (size_t,int,int ) ;
 void* kmalloc_node (size_t,int,int ) ;
 void* kvmalloc (size_t,int) ;

void *
spl_kvmalloc(size_t size, gfp_t lflags)
{
 gfp_t kmalloc_lflags = lflags;

 if (size > PAGE_SIZE) {







  kmalloc_lflags |= __GFP_NOWARN;
  if (!(kmalloc_lflags & __GFP_RETRY_MAYFAIL) ||
      (size <= PAGE_SIZE << PAGE_ALLOC_COSTLY_ORDER)) {
   kmalloc_lflags |= __GFP_NORETRY;
  }
 }
 void *ptr = kmalloc_node(size, kmalloc_lflags, NUMA_NO_NODE);
 if (ptr || size <= PAGE_SIZE ||
     (lflags & __GFP_RECLAIM) != __GFP_RECLAIM) {
  return (ptr);
 }

 return (__vmalloc(size, lflags | __GFP_HIGHMEM, PAGE_KERNEL));
}
