
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint32_t ;
typedef int spl_kmem_cache_t ;


 int fls64 (int ) ;
 int spl_obj_size (int *) ;

__attribute__((used)) static inline uint32_t
spl_offslab_size(spl_kmem_cache_t *skc)
{
 return (1UL << (fls64(spl_obj_size(skc)) + 1));
}
