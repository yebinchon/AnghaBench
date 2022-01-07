
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int objset_t ;
typedef int dsl_pool_t ;
struct TYPE_6__ {scalar_t__ dl_oldfmt; int member_0; } ;
typedef TYPE_1__ dsl_deadlist_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_7__ {int ds_prev_snap_obj; int ds_prev_snap_txg; } ;


 int FTAG ;
 int VERIFY0 (int ) ;
 int * dmu_objset_pool (int *) ;
 int dsl_dataset_hold_obj (int *,int ,int ,int **) ;
 TYPE_5__* dsl_dataset_phys (int *) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_deadlist_add_key (TYPE_1__*,int ,int *) ;
 int dsl_deadlist_close (TYPE_1__*) ;
 int dsl_deadlist_open (TYPE_1__*,int *,int ) ;

__attribute__((used)) static void
dsl_deadlist_regenerate(objset_t *os, uint64_t dlobj,
    uint64_t mrs_obj, dmu_tx_t *tx)
{
 dsl_deadlist_t dl = { 0 };
 dsl_pool_t *dp = dmu_objset_pool(os);

 dsl_deadlist_open(&dl, os, dlobj);
 if (dl.dl_oldfmt) {
  dsl_deadlist_close(&dl);
  return;
 }

 while (mrs_obj != 0) {
  dsl_dataset_t *ds;
  VERIFY0(dsl_dataset_hold_obj(dp, mrs_obj, FTAG, &ds));
  dsl_deadlist_add_key(&dl,
      dsl_dataset_phys(ds)->ds_prev_snap_txg, tx);
  mrs_obj = dsl_dataset_phys(ds)->ds_prev_snap_obj;
  dsl_dataset_rele(ds, FTAG);
 }
 dsl_deadlist_close(&dl);
}
