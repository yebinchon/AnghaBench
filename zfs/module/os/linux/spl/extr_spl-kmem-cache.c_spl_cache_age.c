
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ taskqid_t ;
struct TYPE_5__ {scalar_t__ skc_magic; int skc_flags; int skc_delay; int skc_ref; int skc_lock; scalar_t__ skc_taskqid; } ;
typedef TYPE_1__ spl_kmem_cache_t ;


 int ASSERT (int) ;
 int HZ ;
 int KMC_BIT_DESTROY ;
 int KMC_EXPIRE_AGE ;
 int KMC_NOMAGAZINE ;
 scalar_t__ SKC_MAGIC ;
 int TQ_SLEEP ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 scalar_t__ ddi_get_lbolt () ;
 int on_each_cpu (int ,TYPE_1__*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spl_kmem_cache_expire ;
 int spl_kmem_cache_taskq ;
 int spl_magazine_age ;
 int spl_slab_reclaim (TYPE_1__*) ;
 int taskq_cancel_id (int ,scalar_t__) ;
 scalar_t__ taskq_dispatch_delay (int ,void (*) (void*),TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ test_bit (int ,int*) ;

__attribute__((used)) static void
spl_cache_age(void *data)
{
 spl_kmem_cache_t *skc = (spl_kmem_cache_t *)data;
 taskqid_t id = 0;

 ASSERT(skc->skc_magic == SKC_MAGIC);


 if (!(spl_kmem_cache_expire & KMC_EXPIRE_AGE))
  return;

 atomic_inc(&skc->skc_ref);

 if (!(skc->skc_flags & KMC_NOMAGAZINE))
  on_each_cpu(spl_magazine_age, skc, 1);

 spl_slab_reclaim(skc);

 while (!test_bit(KMC_BIT_DESTROY, &skc->skc_flags) && !id) {
  id = taskq_dispatch_delay(
      spl_kmem_cache_taskq, spl_cache_age, skc, TQ_SLEEP,
      ddi_get_lbolt() + skc->skc_delay / 3 * HZ);


  if (test_bit(KMC_BIT_DESTROY, &skc->skc_flags) && id)
   taskq_cancel_id(spl_kmem_cache_taskq, id);
 }

 spin_lock(&skc->skc_lock);
 skc->skc_taskqid = id;
 spin_unlock(&skc->skc_lock);

 atomic_dec(&skc->skc_ref);
}
