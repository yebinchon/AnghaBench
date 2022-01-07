
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT0 (int) ;
 int KM_PUBLIC_MASK ;
 int NUMA_NO_NODE ;
 void* spl_kmem_alloc_debug (size_t,int,int ) ;
 void* spl_kmem_alloc_impl (size_t,int,int ) ;
 void* spl_kmem_alloc_track (size_t,int,char const*,int,int ) ;

void *
spl_kmem_alloc(size_t size, int flags, const char *func, int line)
{
 ASSERT0(flags & ~KM_PUBLIC_MASK);


 return (spl_kmem_alloc_impl(size, flags, NUMA_NO_NODE));





}
