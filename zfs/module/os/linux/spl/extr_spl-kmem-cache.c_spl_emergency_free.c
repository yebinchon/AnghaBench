
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ske_obj; int ske_node; } ;
typedef TYPE_1__ spl_kmem_emergency_t ;
struct TYPE_7__ {int skc_lock; int skc_obj_total; int skc_obj_emergency; int skc_emergency_tree; int skc_obj_size; } ;
typedef TYPE_2__ spl_kmem_cache_t ;


 int ENOENT ;
 int free_pages (int ,int) ;
 int get_order (int ) ;
 int kfree (TYPE_1__*) ;
 int rb_erase (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 TYPE_1__* spl_emergency_search (int *,void*) ;

__attribute__((used)) static int
spl_emergency_free(spl_kmem_cache_t *skc, void *obj)
{
 spl_kmem_emergency_t *ske;
 int order = get_order(skc->skc_obj_size);

 spin_lock(&skc->skc_lock);
 ske = spl_emergency_search(&skc->skc_emergency_tree, obj);
 if (ske) {
  rb_erase(&ske->ske_node, &skc->skc_emergency_tree);
  skc->skc_obj_emergency--;
  skc->skc_obj_total--;
 }
 spin_unlock(&skc->skc_lock);

 if (ske == ((void*)0))
  return (-ENOENT);

 free_pages(ske->ske_obj, order);
 kfree(ske);

 return (0);
}
