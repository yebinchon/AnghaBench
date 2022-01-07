
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct TYPE_4__ {scalar_t__ sks_magic; scalar_t__ sks_ref; int sks_free_list; int sks_list; scalar_t__ sks_objs; TYPE_2__* sks_cache; } ;
typedef TYPE_1__ spl_kmem_slab_t ;
struct TYPE_5__ {scalar_t__ skc_magic; int skc_slab_total; int skc_obj_total; } ;
typedef TYPE_2__ spl_kmem_cache_t ;


 int ASSERT (int) ;
 scalar_t__ SKC_MAGIC ;
 scalar_t__ SKS_MAGIC ;
 int list_add (int *,struct list_head*) ;
 int list_del (int *) ;
 int list_splice_init (int *,struct list_head*) ;

__attribute__((used)) static void
spl_slab_free(spl_kmem_slab_t *sks,
    struct list_head *sks_list, struct list_head *sko_list)
{
 spl_kmem_cache_t *skc;

 ASSERT(sks->sks_magic == SKS_MAGIC);
 ASSERT(sks->sks_ref == 0);

 skc = sks->sks_cache;
 ASSERT(skc->skc_magic == SKC_MAGIC);







 skc->skc_obj_total -= sks->sks_objs;
 skc->skc_slab_total--;
 list_del(&sks->sks_list);
 list_add(&sks->sks_list, sks_list);
 list_splice_init(&sks->sks_free_list, sko_list);
}
