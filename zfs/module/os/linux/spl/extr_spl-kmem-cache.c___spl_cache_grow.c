
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int sks_list; scalar_t__ sks_objs; } ;
typedef TYPE_1__ spl_kmem_slab_t ;
struct TYPE_7__ {int skc_lock; int skc_waitq; int skc_flags; int skc_partial_list; int skc_obj_total; int skc_slab_total; } ;
typedef TYPE_2__ spl_kmem_cache_t ;
typedef int fstrans_cookie_t ;


 int ENOMEM ;
 int KMC_BIT_DEADLOCKED ;
 int clear_bit (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int smp_mb__after_atomic () ;
 int smp_mb__before_atomic () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spl_fstrans_mark () ;
 int spl_fstrans_unmark (int ) ;
 TYPE_1__* spl_slab_alloc (TYPE_2__*,int) ;
 int wake_up_all (int *) ;

__attribute__((used)) static int
__spl_cache_grow(spl_kmem_cache_t *skc, int flags)
{
 spl_kmem_slab_t *sks;

 fstrans_cookie_t cookie = spl_fstrans_mark();
 sks = spl_slab_alloc(skc, flags);
 spl_fstrans_unmark(cookie);

 spin_lock(&skc->skc_lock);
 if (sks) {
  skc->skc_slab_total++;
  skc->skc_obj_total += sks->sks_objs;
  list_add_tail(&sks->sks_list, &skc->skc_partial_list);

  smp_mb__before_atomic();
  clear_bit(KMC_BIT_DEADLOCKED, &skc->skc_flags);
  smp_mb__after_atomic();
  wake_up_all(&skc->skc_waitq);
 }
 spin_unlock(&skc->skc_lock);

 return (sks == ((void*)0) ? -ENOMEM : 0);
}
