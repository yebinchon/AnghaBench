
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int zl_os; } ;
typedef TYPE_1__ zilog_t ;
typedef int uint64_t ;
struct TYPE_11__ {int dp_meta_objset; int dp_dirty_zilogs; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_12__ {int ds_dbuf; } ;
typedef TYPE_3__ dsl_dataset_t ;


 int ASSERT (int) ;
 int dmu_buf_rele (int ,TYPE_1__*) ;
 TYPE_3__* dmu_objset_ds (int ) ;
 int dmu_objset_is_dirty (int ,int ) ;
 TYPE_1__* txg_list_head (int *,int ) ;
 int txg_list_remove_this (int *,TYPE_1__*,int ) ;
 int zil_clean (TYPE_1__*,int ) ;

void
dsl_pool_sync_done(dsl_pool_t *dp, uint64_t txg)
{
 zilog_t *zilog;

 while ((zilog = txg_list_head(&dp->dp_dirty_zilogs, txg))) {
  dsl_dataset_t *ds = dmu_objset_ds(zilog->zl_os);






  zil_clean(zilog, txg);
  (void) txg_list_remove_this(&dp->dp_dirty_zilogs, zilog, txg);
  ASSERT(!dmu_objset_is_dirty(zilog->zl_os, txg));
  dmu_buf_rele(ds->ds_dbuf, zilog);
 }
 ASSERT(!dmu_objset_is_dirty(dp->dp_meta_objset, txg));
}
