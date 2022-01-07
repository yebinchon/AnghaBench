
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void spl_kmem_free_debug (void const*,size_t) ;
 void spl_kmem_free_impl (void const*,size_t) ;
 void spl_kmem_free_track (void const*,size_t) ;

void
spl_kmem_free(const void *buf, size_t size)
{

 return (spl_kmem_free_impl(buf, size));





}
