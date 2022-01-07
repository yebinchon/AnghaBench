
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zl_dirty_max_txg; int zl_spa; int zl_os; TYPE_2__* zl_dmu_pool; } ;
typedef TYPE_1__ zilog_t ;
typedef int uint64_t ;
struct TYPE_9__ {int dp_dirty_zilogs; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_10__ {int ds_dbuf; scalar_t__ ds_is_snapshot; } ;
typedef TYPE_3__ dsl_dataset_t ;


 int ASSERT (int ) ;
 int MAX (int ,int ) ;
 int dmu_buf_add_ref (int ,TYPE_1__*) ;
 TYPE_3__* dmu_objset_ds (int ) ;
 int panic (char*) ;
 int spa_writeable (int ) ;
 scalar_t__ txg_list_add (int *,TYPE_1__*,int ) ;

void
zilog_dirty(zilog_t *zilog, uint64_t txg)
{
 dsl_pool_t *dp = zilog->zl_dmu_pool;
 dsl_dataset_t *ds = dmu_objset_ds(zilog->zl_os);

 ASSERT(spa_writeable(zilog->zl_spa));

 if (ds->ds_is_snapshot)
  panic("dirtying snapshot!");

 if (txg_list_add(&dp->dp_dirty_zilogs, zilog, txg)) {

  dmu_buf_add_ref(ds->ds_dbuf, zilog);

  zilog->zl_dirty_max_txg = MAX(txg, zilog->zl_dirty_max_txg);
 }
}
