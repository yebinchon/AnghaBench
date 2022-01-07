
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ skm_magic; scalar_t__ skm_avail; scalar_t__ skm_size; void** skm_objs; int skm_refill; } ;
typedef TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_9__ {scalar_t__ skc_magic; int skc_flags; scalar_t__ skc_obj_emergency; TYPE_1__** skc_mag; int skc_lock; int skc_obj_alloc; int skc_linux_cache; int skc_private; int (* skc_dtor ) (void*,int ) ;} ;
typedef TYPE_2__ spl_kmem_cache_t ;


 int ASSERT (int) ;
 int KMC_BIT_DESTROY ;
 int KMC_SLAB ;
 scalar_t__ SKC_MAGIC ;
 scalar_t__ SKM_MAGIC ;
 int is_vmalloc_addr (void*) ;
 int kmem_cache_free (int ,void*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 size_t smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spl_cache_flush (TYPE_2__*,TYPE_1__*,int ) ;
 scalar_t__ spl_emergency_free (TYPE_2__*,void*) ;
 int spl_slab_reclaim (TYPE_2__*) ;
 int stub1 (void*,int ) ;
 int test_bit (int ,int*) ;
 scalar_t__ unlikely (int) ;

void
spl_kmem_cache_free(spl_kmem_cache_t *skc, void *obj)
{
 spl_kmem_magazine_t *skm;
 unsigned long flags;
 int do_reclaim = 0;
 int do_emergency = 0;

 ASSERT(skc->skc_magic == SKC_MAGIC);
 ASSERT(!test_bit(KMC_BIT_DESTROY, &skc->skc_flags));




 if (skc->skc_dtor)
  skc->skc_dtor(obj, skc->skc_private);




 if (skc->skc_flags & KMC_SLAB) {
  kmem_cache_free(skc->skc_linux_cache, obj);
  spin_lock(&skc->skc_lock);
  skc->skc_obj_alloc--;
  spin_unlock(&skc->skc_lock);
  return;
 }







 if (!is_vmalloc_addr(obj)) {
  spin_lock(&skc->skc_lock);
  do_emergency = (skc->skc_obj_emergency > 0);
  spin_unlock(&skc->skc_lock);

  if (do_emergency && (spl_emergency_free(skc, obj) == 0))
   return;
 }

 local_irq_save(flags);







 skm = skc->skc_mag[smp_processor_id()];
 ASSERT(skm->skm_magic == SKM_MAGIC);






 if (unlikely(skm->skm_avail >= skm->skm_size)) {
  spl_cache_flush(skc, skm, skm->skm_refill);
  do_reclaim = 1;
 }


 skm->skm_objs[skm->skm_avail++] = obj;

 local_irq_restore(flags);

 if (do_reclaim)
  spl_slab_reclaim(skc);
}
