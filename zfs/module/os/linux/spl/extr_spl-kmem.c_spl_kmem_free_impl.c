
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_vmalloc_addr (void const*) ;
 int kfree (void const*) ;
 int vfree (void const*) ;

inline void
spl_kmem_free_impl(const void *buf, size_t size)
{
 if (is_vmalloc_addr(buf))
  vfree(buf);
 else
  kfree(buf);
}
