
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int skc_obj_size; } ;
typedef TYPE_1__ kmem_cache_t ;



uint64_t
spl_kmem_cache_entry_size(kmem_cache_t *cache)
{
 return (cache->skc_obj_size);
}
