
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int spl_kmem_cache_t ;


 int MAX (int ,int) ;
 int MIN (scalar_t__,int) ;
 int PAGE_SIZE ;
 scalar_t__ spl_kmem_cache_magazine_size ;
 int spl_obj_size (int *) ;

__attribute__((used)) static int
spl_magazine_size(spl_kmem_cache_t *skc)
{
 uint32_t obj_size = spl_obj_size(skc);
 int size;

 if (spl_kmem_cache_magazine_size > 0)
  return (MAX(MIN(spl_kmem_cache_magazine_size, 256), 2));


 if (obj_size > (PAGE_SIZE * 256))
  size = 4;
 else if (obj_size > (PAGE_SIZE * 32))
  size = 16;
 else if (obj_size > (PAGE_SIZE))
  size = 64;
 else if (obj_size > (PAGE_SIZE / 4))
  size = 128;
 else
  size = 256;

 return (size);
}
