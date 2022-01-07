
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {int ds_bookmarks; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_16__ {scalar_t__ zbm_creation_txg; int zbm_flags; int zbm_uncompressed_freed_before_next_snap; int zbm_compressed_freed_before_next_snap; int zbm_referenced_freed_before_next_snap; } ;
struct TYPE_18__ {int dbn_lock; int dbn_dirty; TYPE_1__ dbn_phys; } ;
typedef TYPE_3__ dsl_bookmark_node_t ;
typedef int dmu_tx_t ;
struct TYPE_19__ {scalar_t__ blk_birth; } ;
typedef TYPE_4__ blkptr_t ;
struct TYPE_20__ {scalar_t__ ds_prev_snap_txg; } ;


 TYPE_3__* AVL_PREV (int *,TYPE_3__*) ;
 scalar_t__ BP_GET_PSIZE (TYPE_4__ const*) ;
 scalar_t__ BP_GET_UCSIZE (TYPE_4__ const*) ;
 int B_TRUE ;
 int ZBM_FLAG_HAS_FBN ;
 TYPE_3__* avl_last (int *) ;
 scalar_t__ bp_get_dsize_sync (int ,TYPE_4__ const*) ;
 int dsl_dataset_get_spa (TYPE_2__*) ;
 TYPE_5__* dsl_dataset_phys (TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
dsl_bookmark_block_killed(dsl_dataset_t *ds, const blkptr_t *bp, dmu_tx_t *tx)
{



 for (dsl_bookmark_node_t *dbn = avl_last(&ds->ds_bookmarks);
     dbn != ((void*)0) && dbn->dbn_phys.zbm_creation_txg >=
     dsl_dataset_phys(ds)->ds_prev_snap_txg;
     dbn = AVL_PREV(&ds->ds_bookmarks, dbn)) {




  if (bp->blk_birth <= dbn->dbn_phys.zbm_creation_txg &&
      (dbn->dbn_phys.zbm_flags & ZBM_FLAG_HAS_FBN)) {
   mutex_enter(&dbn->dbn_lock);
   dbn->dbn_phys.zbm_referenced_freed_before_next_snap +=
       bp_get_dsize_sync(dsl_dataset_get_spa(ds), bp);
   dbn->dbn_phys.zbm_compressed_freed_before_next_snap +=
       BP_GET_PSIZE(bp);
   dbn->dbn_phys.zbm_uncompressed_freed_before_next_snap +=
       BP_GET_UCSIZE(bp);
   dbn->dbn_dirty = B_TRUE;
   mutex_exit(&dbn->dbn_lock);
  }
 }
}
