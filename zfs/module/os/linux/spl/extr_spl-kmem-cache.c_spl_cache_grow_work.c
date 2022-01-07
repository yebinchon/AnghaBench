
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int skc_flags; int skc_ref; } ;
typedef TYPE_1__ spl_kmem_cache_t ;
struct TYPE_6__ {int ska_flags; TYPE_1__* ska_cache; } ;
typedef TYPE_2__ spl_kmem_alloc_t ;


 int KMC_BIT_GROWING ;
 int __spl_cache_grow (TYPE_1__*,int ) ;
 int atomic_dec (int *) ;
 int clear_bit (int ,int *) ;
 int kfree (TYPE_2__*) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;

__attribute__((used)) static void
spl_cache_grow_work(void *data)
{
 spl_kmem_alloc_t *ska = (spl_kmem_alloc_t *)data;
 spl_kmem_cache_t *skc = ska->ska_cache;

 (void) __spl_cache_grow(skc, ska->ska_flags);

 atomic_dec(&skc->skc_ref);
 smp_mb__before_atomic();
 clear_bit(KMC_BIT_GROWING, &skc->skc_flags);
 smp_mb__after_atomic();

 kfree(ska);
}
