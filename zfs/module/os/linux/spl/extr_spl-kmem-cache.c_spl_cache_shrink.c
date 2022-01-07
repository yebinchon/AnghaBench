
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ sks_magic; int sks_ref; int sks_objs; int sks_list; int sks_age; int sks_free_list; TYPE_3__* sks_cache; } ;
typedef TYPE_1__ spl_kmem_slab_t ;
struct TYPE_8__ {scalar_t__ sko_magic; int sko_list; TYPE_1__* sko_slab; } ;
typedef TYPE_2__ spl_kmem_obj_t ;
struct TYPE_9__ {scalar_t__ skc_magic; int skc_slab_alloc; int skc_partial_list; int skc_obj_alloc; } ;
typedef TYPE_3__ spl_kmem_cache_t ;


 int ASSERT (int) ;
 scalar_t__ SKC_MAGIC ;
 scalar_t__ SKO_MAGIC ;
 scalar_t__ SKS_MAGIC ;
 int jiffies ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 TYPE_2__* spl_sko_from_obj (TYPE_3__*,void*) ;

__attribute__((used)) static void
spl_cache_shrink(spl_kmem_cache_t *skc, void *obj)
{
 spl_kmem_slab_t *sks = ((void*)0);
 spl_kmem_obj_t *sko = ((void*)0);

 ASSERT(skc->skc_magic == SKC_MAGIC);

 sko = spl_sko_from_obj(skc, obj);
 ASSERT(sko->sko_magic == SKO_MAGIC);
 sks = sko->sko_slab;
 ASSERT(sks->sks_magic == SKS_MAGIC);
 ASSERT(sks->sks_cache == skc);
 list_add(&sko->sko_list, &sks->sks_free_list);

 sks->sks_age = jiffies;
 sks->sks_ref--;
 skc->skc_obj_alloc--;






 if (sks->sks_ref == (sks->sks_objs - 1)) {
  list_del(&sks->sks_list);
  list_add(&sks->sks_list, &skc->skc_partial_list);
 }





 if (sks->sks_ref == 0) {
  list_del(&sks->sks_list);
  list_add_tail(&sks->sks_list, &skc->skc_partial_list);
  skc->skc_slab_alloc--;
 }
}
