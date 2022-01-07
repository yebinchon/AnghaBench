
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int spa_t ;
typedef int krwlock_t ;
struct TYPE_13__ {TYPE_7__* ds_dir; } ;
typedef TYPE_1__ dsl_dataset_t ;
struct TYPE_14__ {scalar_t__ dn_objset; } ;
typedef TYPE_2__ dnode_t ;
typedef int dmu_tx_t ;
struct TYPE_15__ {scalar_t__ drica_os; scalar_t__ drica_blk_birth; int * drica_tx; } ;
typedef TYPE_3__ dbuf_remap_impl_callback_arg_t ;
struct TYPE_16__ {scalar_t__ blk_birth; } ;
typedef TYPE_4__ blkptr_t ;
struct TYPE_17__ {scalar_t__ dd_origin_txg; int dd_pending_allocs; int dd_pending_frees; int dd_livelist; } ;


 int ASSERT (int) ;
 int BP_IS_EMBEDDED (TYPE_4__*) ;
 int RW_WRITER ;
 int SPA_FEATURE_LIVELIST ;
 int bplist_append (int *,TYPE_4__*) ;
 int dbuf_remap_impl_callback ;
 TYPE_1__* dmu_objset_ds (scalar_t__) ;
 int * dmu_objset_spa (scalar_t__) ;
 scalar_t__ dsl_deadlist_is_open (int *) ;
 int dsl_dir_is_clone (TYPE_7__*) ;
 int dsl_pool_sync_context (int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_feature_is_enabled (int *,int ) ;
 int spa_get_dsl (int *) ;
 scalar_t__ spa_meta_objset (int *) ;
 scalar_t__ spa_remap_blkptr (int *,TYPE_4__*,int ,TYPE_3__*) ;

__attribute__((used)) static void
dbuf_remap_impl(dnode_t *dn, blkptr_t *bp, krwlock_t *rw, dmu_tx_t *tx)
{
 blkptr_t bp_copy = *bp;
 spa_t *spa = dmu_objset_spa(dn->dn_objset);
 dbuf_remap_impl_callback_arg_t drica;

 ASSERT(dsl_pool_sync_context(spa_get_dsl(spa)));

 drica.drica_os = dn->dn_objset;
 drica.drica_blk_birth = bp->blk_birth;
 drica.drica_tx = tx;
 if (spa_remap_blkptr(spa, &bp_copy, dbuf_remap_impl_callback,
     &drica)) {
  if (dn->dn_objset != spa_meta_objset(spa)) {
   dsl_dataset_t *ds = dmu_objset_ds(dn->dn_objset);
   if (dsl_deadlist_is_open(&ds->ds_dir->dd_livelist) &&
       bp->blk_birth > ds->ds_dir->dd_origin_txg) {
    ASSERT(!BP_IS_EMBEDDED(bp));
    ASSERT(dsl_dir_is_clone(ds->ds_dir));
    ASSERT(spa_feature_is_enabled(spa,
        SPA_FEATURE_LIVELIST));
    bplist_append(&ds->ds_dir->dd_pending_frees,
        bp);
    bplist_append(&ds->ds_dir->dd_pending_allocs,
        &bp_copy);
   }
  }







  if (rw != ((void*)0))
   rw_enter(rw, RW_WRITER);
  *bp = bp_copy;
  if (rw != ((void*)0))
   rw_exit(rw);
 }
}
