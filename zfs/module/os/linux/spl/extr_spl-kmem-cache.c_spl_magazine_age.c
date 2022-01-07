
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ skm_magic; size_t skm_cpu; scalar_t__ skm_avail; int skm_refill; scalar_t__ skm_age; } ;
typedef TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_6__ {int skc_delay; int skc_lock; TYPE_1__** skc_mag; } ;
typedef TYPE_2__ spl_kmem_cache_t ;


 int ASSERT (int) ;
 int HZ ;
 scalar_t__ SKM_MAGIC ;
 int __spl_cache_flush (TYPE_2__*,TYPE_1__*,int ) ;
 int irqs_disabled () ;
 int jiffies ;
 size_t smp_processor_id () ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static void
spl_magazine_age(void *data)
{
 spl_kmem_cache_t *skc = (spl_kmem_cache_t *)data;
 spl_kmem_magazine_t *skm = skc->skc_mag[smp_processor_id()];

 ASSERT(skm->skm_magic == SKM_MAGIC);
 ASSERT(skm->skm_cpu == smp_processor_id());
 ASSERT(irqs_disabled());


 if ((skm->skm_avail == 0) ||
     time_before(jiffies, skm->skm_age + skc->skc_delay * HZ))
  return;






 if (!spin_trylock(&skc->skc_lock))
  return;

 __spl_cache_flush(skc, skm, skm->skm_refill);
 spin_unlock(&skc->skc_lock);
}
