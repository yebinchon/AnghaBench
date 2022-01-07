
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void spl_kmem_obj_t ;
struct TYPE_3__ {int skc_obj_align; int skc_obj_size; } ;
typedef TYPE_1__ spl_kmem_cache_t ;


 int P2ROUNDUP_TYPED (int ,int ,int ) ;
 int uint32_t ;

__attribute__((used)) static inline spl_kmem_obj_t *
spl_sko_from_obj(spl_kmem_cache_t *skc, void *obj)
{
 return (obj + P2ROUNDUP_TYPED(skc->skc_obj_size,
     skc->skc_obj_align, uint32_t));
}
