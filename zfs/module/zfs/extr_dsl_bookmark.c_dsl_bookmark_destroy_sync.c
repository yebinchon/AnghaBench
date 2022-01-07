
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvpair_t ;
struct TYPE_10__ {int dp_spa; int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_11__ {int ds_object; scalar_t__ ds_bookmarks_obj; int ds_dbuf; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_12__ {int dbda_success; } ;
typedef TYPE_3__ dsl_bookmark_destroy_arg_t ;
typedef int dmu_tx_t ;


 int DS_FIELD_BOOKMARK_NAMES ;
 int FTAG ;
 int SPA_FEATURE_BOOKMARKS ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_bookmark_destroy_sync_impl (TYPE_2__*,char*,int *) ;
 int dsl_bookmark_hold_ds (TYPE_1__*,int ,TYPE_2__**,int ,char**) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int * nvlist_next_nvpair (int ,int *) ;
 int nvpair_name (int *) ;
 int spa_feature_decr (int ,int ,int *) ;
 int spa_history_log_internal_ds (TYPE_2__*,char*,int *,char*,char*) ;
 int zap_count (int *,scalar_t__,scalar_t__*) ;
 int zap_destroy (int *,scalar_t__,int *) ;
 int zap_remove (int *,int ,int ,int *) ;

__attribute__((used)) static void
dsl_bookmark_destroy_sync(void *arg, dmu_tx_t *tx)
{
 dsl_bookmark_destroy_arg_t *dbda = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 objset_t *mos = dp->dp_meta_objset;

 for (nvpair_t *pair = nvlist_next_nvpair(dbda->dbda_success, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(dbda->dbda_success, pair)) {
  dsl_dataset_t *ds;
  char *shortname;
  uint64_t zap_cnt;

  VERIFY0(dsl_bookmark_hold_ds(dp, nvpair_name(pair),
      &ds, FTAG, &shortname));
  dsl_bookmark_destroy_sync_impl(ds, shortname, tx);





  VERIFY0(zap_count(mos, ds->ds_bookmarks_obj, &zap_cnt));
  if (zap_cnt == 0) {
   dmu_buf_will_dirty(ds->ds_dbuf, tx);
   VERIFY0(zap_destroy(mos, ds->ds_bookmarks_obj, tx));
   ds->ds_bookmarks_obj = 0;
   spa_feature_decr(dp->dp_spa, SPA_FEATURE_BOOKMARKS, tx);
   VERIFY0(zap_remove(mos, ds->ds_object,
       DS_FIELD_BOOKMARK_NAMES, tx));
  }

  spa_history_log_internal_ds(ds, "remove bookmark", tx,
      "name=%s", shortname);

  dsl_dataset_rele(ds, FTAG);
 }
}
