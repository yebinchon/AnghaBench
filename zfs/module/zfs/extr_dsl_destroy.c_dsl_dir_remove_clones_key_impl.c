
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;
typedef struct TYPE_21__ TYPE_15__ ;


struct TYPE_24__ {int za_first_integer; } ;
typedef TYPE_2__ zap_cursor_t ;
typedef TYPE_2__ zap_attribute_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int list_t ;
struct TYPE_25__ {TYPE_19__* dd_pool; } ;
typedef TYPE_4__ dsl_dir_t ;
struct TYPE_26__ {int ds_remap_deadlist; int ds_deadlist; TYPE_1__* ds_dir; } ;
typedef TYPE_5__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_23__ {int dd_origin_txg; } ;
struct TYPE_22__ {int * dp_meta_objset; } ;
struct TYPE_21__ {scalar_t__ dd_clones; } ;


 int KM_SLEEP ;
 int VERIFY0 (int ) ;
 int dsl_dataset_hold_obj (TYPE_19__*,int ,void*,TYPE_5__**) ;
 int dsl_dataset_rele (TYPE_5__*,void*) ;
 scalar_t__ dsl_dataset_remap_deadlist_exists (TYPE_5__*) ;
 int dsl_deadlist_remove_key (int *,int ,int *) ;
 TYPE_15__* dsl_dir_phys (TYPE_4__*) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int kmem_free (TYPE_2__*,int) ;
 int list_insert_head (int *,int ) ;
 int rck_alloc (TYPE_5__*) ;
 int zap_cursor_advance (TYPE_2__*) ;
 int zap_cursor_fini (TYPE_2__*) ;
 int zap_cursor_init (TYPE_2__*,int *,scalar_t__) ;
 scalar_t__ zap_cursor_retrieve (TYPE_2__*,TYPE_2__*) ;

__attribute__((used)) static void
dsl_dir_remove_clones_key_impl(dsl_dir_t *dd, uint64_t mintxg, dmu_tx_t *tx,
    list_t *stack, void *tag)
{
 objset_t *mos = dd->dd_pool->dp_meta_objset;






 if (dsl_dir_phys(dd)->dd_clones == 0)
  return;

 zap_cursor_t *zc = kmem_alloc(sizeof (zap_cursor_t), KM_SLEEP);
 zap_attribute_t *za = kmem_alloc(sizeof (zap_attribute_t), KM_SLEEP);

 for (zap_cursor_init(zc, mos, dsl_dir_phys(dd)->dd_clones);
     zap_cursor_retrieve(zc, za) == 0;
     zap_cursor_advance(zc)) {
  dsl_dataset_t *clone;

  VERIFY0(dsl_dataset_hold_obj(dd->dd_pool,
      za->za_first_integer, tag, &clone));

  if (clone->ds_dir->dd_origin_txg > mintxg) {
   dsl_deadlist_remove_key(&clone->ds_deadlist,
       mintxg, tx);

   if (dsl_dataset_remap_deadlist_exists(clone)) {
    dsl_deadlist_remove_key(
        &clone->ds_remap_deadlist, mintxg, tx);
   }

   list_insert_head(stack, rck_alloc(clone));
  } else {
   dsl_dataset_rele(clone, tag);
  }
 }
 zap_cursor_fini(zc);

 kmem_free(za, sizeof (zap_attribute_t));
 kmem_free(zc, sizeof (zap_cursor_t));
}
