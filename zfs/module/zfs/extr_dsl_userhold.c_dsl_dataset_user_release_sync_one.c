
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int objset_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int longlong_t ;
struct TYPE_10__ {int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_11__ {scalar_t__ ds_userrefs; int ds_object; TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {int ds_userrefs_obj; } ;
struct TYPE_9__ {TYPE_2__* dd_pool; } ;


 int ENOENT ;
 int VERIFY (int) ;
 int VERIFY0 (int ) ;
 TYPE_7__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_pool_user_release (TYPE_2__*,int ,char const*,int *) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int spa_history_log_internal_ds (TYPE_3__*,char*,int *,char*,char const*,int ) ;
 int zap_remove (int *,int ,char const*,int *) ;

__attribute__((used)) static void
dsl_dataset_user_release_sync_one(dsl_dataset_t *ds, nvlist_t *holds,
    dmu_tx_t *tx)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;
 objset_t *mos = dp->dp_meta_objset;

 for (nvpair_t *pair = nvlist_next_nvpair(holds, ((void*)0)); pair != ((void*)0);
     pair = nvlist_next_nvpair(holds, pair)) {
  int error;
  const char *holdname = nvpair_name(pair);


  error = dsl_pool_user_release(dp, ds->ds_object, holdname, tx);
  VERIFY(error == 0 || error == ENOENT);

  VERIFY0(zap_remove(mos, dsl_dataset_phys(ds)->ds_userrefs_obj,
      holdname, tx));
  ds->ds_userrefs--;

  spa_history_log_internal_ds(ds, "release", tx,
      "tag=%s refs=%lld", holdname, (longlong_t)ds->ds_userrefs);
 }
}
