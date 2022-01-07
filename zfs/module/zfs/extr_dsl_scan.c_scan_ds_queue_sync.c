
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int spa_t ;
struct TYPE_10__ {int sds_txg; int sds_dsobj; } ;
typedef TYPE_2__ scan_ds_t ;
struct TYPE_9__ {int scn_queue_obj; } ;
struct TYPE_11__ {TYPE_1__ scn_phys; int scn_queue; int scn_bytes_pending; TYPE_4__* scn_dp; } ;
typedef TYPE_3__ dsl_scan_t ;
struct TYPE_12__ {int dp_meta_objset; int * dp_spa; } ;
typedef TYPE_4__ dsl_pool_t ;
typedef int dmu_tx_t ;
typedef int dmu_object_type_t ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 int DMU_OT_NONE ;
 int DMU_OT_SCAN_QUEUE ;
 int DMU_OT_ZAP_OTHER ;
 scalar_t__ SPA_VERSION_DSL_SCRUB ;
 int VERIFY0 (int ) ;
 TYPE_2__* avl_first (int *) ;
 int dmu_object_free (int ,int ,int *) ;
 scalar_t__ spa_version (int *) ;
 int zap_add_int_key (int ,int ,int ,int ,int *) ;
 int zap_create (int ,int ,int ,int ,int *) ;

__attribute__((used)) static void
scan_ds_queue_sync(dsl_scan_t *scn, dmu_tx_t *tx)
{
 dsl_pool_t *dp = scn->scn_dp;
 spa_t *spa = dp->dp_spa;
 dmu_object_type_t ot = (spa_version(spa) >= SPA_VERSION_DSL_SCRUB) ?
     DMU_OT_SCAN_QUEUE : DMU_OT_ZAP_OTHER;

 ASSERT0(scn->scn_bytes_pending);
 ASSERT(scn->scn_phys.scn_queue_obj != 0);

 VERIFY0(dmu_object_free(dp->dp_meta_objset,
     scn->scn_phys.scn_queue_obj, tx));
 scn->scn_phys.scn_queue_obj = zap_create(dp->dp_meta_objset, ot,
     DMU_OT_NONE, 0, tx);
 for (scan_ds_t *sds = avl_first(&scn->scn_queue);
     sds != ((void*)0); sds = AVL_NEXT(&scn->scn_queue, sds)) {
  VERIFY0(zap_add_int_key(dp->dp_meta_objset,
      scn->scn_phys.scn_queue_obj, sds->sds_dsobj,
      sds->sds_txg, tx));
 }
}
