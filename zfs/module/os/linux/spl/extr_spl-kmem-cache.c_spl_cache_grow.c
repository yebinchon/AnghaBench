
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ skc_magic; int skc_flags; int skc_lock; int skc_obj_deadlock; int skc_waitq; int skc_ref; } ;
typedef TYPE_1__ spl_kmem_cache_t ;
struct TYPE_10__ {int ska_flags; int ska_tqe; TYPE_1__* ska_cache; } ;
typedef TYPE_2__ spl_kmem_alloc_t ;


 int ASSERT (int) ;
 int ASSERT0 (int) ;
 int EAGAIN ;
 int ENOMEM ;
 int HZ ;
 int KMC_BIT_DEADLOCKED ;
 int KMC_BIT_GROWING ;
 int KMC_BIT_REAPING ;
 int KMC_KVMEM ;
 int KMC_SLAB ;
 int KMC_VMEM ;
 int KM_NOSLEEP ;
 int KM_PUBLIC_MASK ;
 scalar_t__ SKC_MAGIC ;
 int TASK_UNINTERRUPTIBLE ;
 int __spl_cache_grow (TYPE_1__*,int) ;
 int atomic_inc (int *) ;
 int clear_bit_unlock (int ,int*) ;
 TYPE_2__* kmalloc (int,int ) ;
 int kmem_flags_convert (int) ;
 int might_sleep () ;
 int set_bit (int ,int*) ;
 int smp_mb__after_atomic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spl_cache_grow_wait (TYPE_1__*) ;
 int spl_cache_grow_work ;
 int spl_emergency_alloc (TYPE_1__*,int,void**) ;
 int spl_kmem_cache_taskq ;
 int spl_wait_on_bit (int*,int ,int ) ;
 int taskq_dispatch_ent (int ,int ,TYPE_2__*,int ,int *) ;
 int taskq_init_ent (int *) ;
 scalar_t__ test_and_set_bit (int ,int*) ;
 scalar_t__ test_bit (int ,int*) ;
 int wait_event_timeout (int ,int ,int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int
spl_cache_grow(spl_kmem_cache_t *skc, int flags, void **obj)
{
 int remaining, rc = 0;

 ASSERT0(flags & ~KM_PUBLIC_MASK);
 ASSERT(skc->skc_magic == SKC_MAGIC);
 ASSERT((skc->skc_flags & KMC_SLAB) == 0);
 might_sleep();
 *obj = ((void*)0);





 if (test_bit(KMC_BIT_REAPING, &skc->skc_flags)) {
  rc = spl_wait_on_bit(&skc->skc_flags, KMC_BIT_REAPING,
      TASK_UNINTERRUPTIBLE);
  return (rc ? rc : -EAGAIN);
 }
 if (!(skc->skc_flags & KMC_VMEM) && !(skc->skc_flags & KMC_KVMEM)) {
  rc = __spl_cache_grow(skc, flags | KM_NOSLEEP);
  if (rc == 0)
   return (0);
 }







 if (test_and_set_bit(KMC_BIT_GROWING, &skc->skc_flags) == 0) {
  spl_kmem_alloc_t *ska;

  ska = kmalloc(sizeof (*ska), kmem_flags_convert(flags));
  if (ska == ((void*)0)) {
   clear_bit_unlock(KMC_BIT_GROWING, &skc->skc_flags);
   smp_mb__after_atomic();
   wake_up_all(&skc->skc_waitq);
   return (-ENOMEM);
  }

  atomic_inc(&skc->skc_ref);
  ska->ska_cache = skc;
  ska->ska_flags = flags;
  taskq_init_ent(&ska->ska_tqe);
  taskq_dispatch_ent(spl_kmem_cache_taskq,
      spl_cache_grow_work, ska, 0, &ska->ska_tqe);
 }
 if (test_bit(KMC_BIT_DEADLOCKED, &skc->skc_flags)) {
  rc = spl_emergency_alloc(skc, flags, obj);
 } else {
  remaining = wait_event_timeout(skc->skc_waitq,
      spl_cache_grow_wait(skc), HZ / 10);

  if (!remaining) {
   spin_lock(&skc->skc_lock);
   if (test_bit(KMC_BIT_GROWING, &skc->skc_flags)) {
    set_bit(KMC_BIT_DEADLOCKED, &skc->skc_flags);
    skc->skc_obj_deadlock++;
   }
   spin_unlock(&skc->skc_lock);
  }

  rc = -ENOMEM;
 }

 return (rc);
}
