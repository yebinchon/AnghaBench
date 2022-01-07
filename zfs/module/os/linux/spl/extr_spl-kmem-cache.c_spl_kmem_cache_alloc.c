
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct kmem_cache {int dummy; } ;
struct TYPE_6__ {scalar_t__ skm_magic; size_t skm_avail; int skm_age; void** skm_objs; } ;
typedef TYPE_1__ spl_kmem_magazine_t ;
struct TYPE_7__ {scalar_t__ skc_magic; int skc_flags; int skc_private; int (* skc_ctor ) (void*,int ,int) ;int skc_obj_align; TYPE_1__** skc_mag; int skc_lock; int skc_obj_alloc; struct kmem_cache* skc_linux_cache; } ;
typedef TYPE_2__ spl_kmem_cache_t ;


 int ASSERT (void*) ;
 int ASSERT0 (int) ;
 void* IS_P2ALIGNED (void*,int ) ;
 int KMC_BIT_DESTROY ;
 int KMC_SLAB ;
 int KM_NOSLEEP ;
 int KM_PUBLIC_MASK ;
 scalar_t__ SKC_MAGIC ;
 scalar_t__ SKM_MAGIC ;
 int jiffies ;
 void* kmem_cache_alloc (struct kmem_cache*,int ) ;
 int kmem_flags_convert (int) ;
 scalar_t__ likely (size_t) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int prefetchw (void*) ;
 size_t smp_processor_id () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 void* spl_cache_refill (TYPE_2__*,TYPE_1__*,int) ;
 int stub1 (void*,int ,int) ;
 int test_bit (int ,int*) ;

void *
spl_kmem_cache_alloc(spl_kmem_cache_t *skc, int flags)
{
 spl_kmem_magazine_t *skm;
 void *obj = ((void*)0);

 ASSERT0(flags & ~KM_PUBLIC_MASK);
 ASSERT(skc->skc_magic == SKC_MAGIC);
 ASSERT(!test_bit(KMC_BIT_DESTROY, &skc->skc_flags));






 if (skc->skc_flags & KMC_SLAB) {
  struct kmem_cache *slc = skc->skc_linux_cache;
  do {
   obj = kmem_cache_alloc(slc, kmem_flags_convert(flags));
  } while ((obj == ((void*)0)) && !(flags & KM_NOSLEEP));

  if (obj != ((void*)0)) {






   spin_lock(&skc->skc_lock);
   skc->skc_obj_alloc++;
   spin_unlock(&skc->skc_lock);
  }
  goto ret;
 }

 local_irq_disable();

restart:






 skm = skc->skc_mag[smp_processor_id()];
 ASSERT(skm->skm_magic == SKM_MAGIC);

 if (likely(skm->skm_avail)) {

  obj = skm->skm_objs[--skm->skm_avail];
  skm->skm_age = jiffies;
 } else {
  obj = spl_cache_refill(skc, skm, flags);
  if ((obj == ((void*)0)) && !(flags & KM_NOSLEEP))
   goto restart;

  local_irq_enable();
  goto ret;
 }

 local_irq_enable();
 ASSERT(obj);
 ASSERT(IS_P2ALIGNED(obj, skc->skc_obj_align));

ret:

 if (obj) {
  if (obj && skc->skc_ctor)
   skc->skc_ctor(obj, skc->skc_private, flags);
  else
   prefetchw(obj);
 }

 return (obj);
}
