
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_7__ {int skm_avail; } ;
typedef TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_8__ {scalar_t__ skc_magic; int skc_flags; scalar_t__ skc_slab_total; scalar_t__ skc_slab_alloc; scalar_t__ skc_obj_alloc; int skc_ref; TYPE_1__** skc_mag; int skc_private; int (* skc_reclaim ) (int ) ;int skc_lock; } ;
typedef TYPE_2__ spl_kmem_cache_t ;


 int ASSERT (int) ;
 int KMC_BIT_DESTROY ;
 int KMC_BIT_REAPING ;
 int KMC_EXPIRE_MEM ;
 int KMC_SLAB ;
 scalar_t__ SKC_MAGIC ;
 scalar_t__ UINT64_MAX ;
 int atomic_dec (int *) ;
 int atomic_inc (int *) ;
 int clear_bit_unlock (int ,int*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int smp_mb__after_atomic () ;
 size_t smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spl_cache_flush (TYPE_2__*,TYPE_1__*,int ) ;
 int spl_kmem_cache_expire ;
 int spl_slab_reclaim (TYPE_2__*) ;
 int stub1 (int ) ;
 int stub2 (int ) ;
 scalar_t__ test_and_set_bit (int ,int*) ;
 int test_bit (int ,int*) ;
 int wake_up_bit (int*,int ) ;

void
spl_kmem_cache_reap_now(spl_kmem_cache_t *skc, int count)
{
 ASSERT(skc->skc_magic == SKC_MAGIC);
 ASSERT(!test_bit(KMC_BIT_DESTROY, &skc->skc_flags));

 atomic_inc(&skc->skc_ref);




 if (skc->skc_flags & KMC_SLAB) {
  if (skc->skc_reclaim)
   skc->skc_reclaim(skc->skc_private);
  goto out;
 }




 if (test_and_set_bit(KMC_BIT_REAPING, &skc->skc_flags))
  goto out;
 if (skc->skc_reclaim) {
  uint64_t objects = UINT64_MAX;
  int do_reclaim;

  do {
   spin_lock(&skc->skc_lock);
   do_reclaim =
       (skc->skc_slab_total > 0) &&
       ((skc->skc_slab_total-skc->skc_slab_alloc) == 0) &&
       (skc->skc_obj_alloc < objects);

   objects = skc->skc_obj_alloc;
   spin_unlock(&skc->skc_lock);

   if (do_reclaim)
    skc->skc_reclaim(skc->skc_private);

  } while (do_reclaim);
 }


 if (spl_kmem_cache_expire & KMC_EXPIRE_MEM) {
  spl_kmem_magazine_t *skm;
  unsigned long irq_flags;

  local_irq_save(irq_flags);
  skm = skc->skc_mag[smp_processor_id()];
  spl_cache_flush(skc, skm, skm->skm_avail);
  local_irq_restore(irq_flags);
 }

 spl_slab_reclaim(skc);
 clear_bit_unlock(KMC_BIT_REAPING, &skc->skc_flags);
 smp_mb__after_atomic();
 wake_up_bit(&skc->skc_flags, KMC_BIT_REAPING);
out:
 atomic_dec(&skc->skc_ref);
}
