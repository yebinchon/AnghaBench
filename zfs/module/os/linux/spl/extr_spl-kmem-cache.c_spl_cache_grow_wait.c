
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int skc_flags; } ;
typedef TYPE_1__ spl_kmem_cache_t ;


 int KMC_BIT_GROWING ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int
spl_cache_grow_wait(spl_kmem_cache_t *skc)
{
 return (!test_bit(KMC_BIT_GROWING, &skc->skc_flags));
}
