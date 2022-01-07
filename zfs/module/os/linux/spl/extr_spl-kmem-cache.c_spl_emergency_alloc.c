
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ske_obj; } ;
typedef TYPE_1__ spl_kmem_emergency_t ;
struct TYPE_8__ {scalar_t__ skc_obj_emergency; scalar_t__ skc_obj_emergency_max; int skc_lock; int skc_obj_total; int skc_emergency_tree; int skc_partial_list; int skc_obj_size; } ;
typedef TYPE_2__ spl_kmem_cache_t ;
typedef int gfp_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ __get_free_pages (int ,int) ;
 int free_pages (scalar_t__,int) ;
 int get_order (int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kmalloc (int,int ) ;
 int kmem_flags_convert (int) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int spl_emergency_insert (int *,TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int
spl_emergency_alloc(spl_kmem_cache_t *skc, int flags, void **obj)
{
 gfp_t lflags = kmem_flags_convert(flags);
 spl_kmem_emergency_t *ske;
 int order = get_order(skc->skc_obj_size);
 int empty;


 spin_lock(&skc->skc_lock);
 empty = list_empty(&skc->skc_partial_list);
 spin_unlock(&skc->skc_lock);
 if (!empty)
  return (-EEXIST);

 ske = kmalloc(sizeof (*ske), lflags);
 if (ske == ((void*)0))
  return (-ENOMEM);

 ske->ske_obj = __get_free_pages(lflags, order);
 if (ske->ske_obj == 0) {
  kfree(ske);
  return (-ENOMEM);
 }

 spin_lock(&skc->skc_lock);
 empty = spl_emergency_insert(&skc->skc_emergency_tree, ske);
 if (likely(empty)) {
  skc->skc_obj_total++;
  skc->skc_obj_emergency++;
  if (skc->skc_obj_emergency > skc->skc_obj_emergency_max)
   skc->skc_obj_emergency_max = skc->skc_obj_emergency;
 }
 spin_unlock(&skc->skc_lock);

 if (unlikely(!empty)) {
  free_pages(ske->ske_obj, order);
  kfree(ske);
  return (-EINVAL);
 }

 *obj = (void *)ske->ske_obj;

 return (0);
}
