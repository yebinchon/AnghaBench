
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int zfs_bookmark_phys_t ;
typedef int uint64_t ;
struct TYPE_16__ {int dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_17__ {int ds_bookmarks; int ds_bookmarks_obj; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_19__ {scalar_t__ zbm_creation_txg; int zbm_flags; } ;
struct TYPE_18__ {scalar_t__ dbn_dirty; TYPE_4__ dbn_phys; int dbn_name; } ;
typedef TYPE_3__ dsl_bookmark_node_t ;
typedef int dmu_tx_t ;
struct TYPE_20__ {scalar_t__ ds_prev_snap_txg; } ;


 int ASSERT (int) ;
 TYPE_3__* AVL_NEXT (int *,TYPE_3__*) ;
 TYPE_3__* AVL_PREV (int *,TYPE_3__*) ;
 scalar_t__ B_FALSE ;
 int VERIFY0 (int ) ;
 int ZBM_FLAG_HAS_FBN ;
 TYPE_3__* avl_first (int *) ;
 TYPE_3__* avl_last (int *) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 scalar_t__ dsl_dataset_is_snapshot (TYPE_2__*) ;
 TYPE_5__* dsl_dataset_phys (TYPE_2__*) ;
 int zap_update (int ,int ,int ,int,int,TYPE_4__*,int *) ;

void
dsl_bookmark_sync_done(dsl_dataset_t *ds, dmu_tx_t *tx)
{
 dsl_pool_t *dp = dmu_tx_pool(tx);

 if (dsl_dataset_is_snapshot(ds))
  return;







 for (dsl_bookmark_node_t *dbn = avl_last(&ds->ds_bookmarks);
     dbn != ((void*)0) && dbn->dbn_phys.zbm_creation_txg >=
     dsl_dataset_phys(ds)->ds_prev_snap_txg;
     dbn = AVL_PREV(&ds->ds_bookmarks, dbn)) {
  if (dbn->dbn_dirty) {




   ASSERT(dbn->dbn_phys.zbm_flags & ZBM_FLAG_HAS_FBN);
   VERIFY0(zap_update(dp->dp_meta_objset,
       ds->ds_bookmarks_obj,
       dbn->dbn_name, sizeof (uint64_t),
       sizeof (zfs_bookmark_phys_t) / sizeof (uint64_t),
       &dbn->dbn_phys, tx));
   dbn->dbn_dirty = B_FALSE;
  }
 }






}
