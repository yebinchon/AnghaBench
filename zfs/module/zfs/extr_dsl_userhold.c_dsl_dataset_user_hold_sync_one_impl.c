
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int objset_t ;
typedef int nvlist_t ;
typedef int name ;
typedef scalar_t__ minor_t ;
struct TYPE_10__ {int dp_config_rwlock; int * dp_meta_objset; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_11__ {scalar_t__ ds_userrefs; scalar_t__ ds_object; int ds_dbuf; TYPE_1__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_12__ {scalar_t__ ds_userrefs_obj; } ;
struct TYPE_9__ {TYPE_2__* dd_pool; } ;


 int ASSERT (int ) ;
 int DMU_OT_NONE ;
 int DMU_OT_USERREFS ;
 int MAXNAMELEN ;
 int RRW_WRITE_HELD (int *) ;
 int VERIFY0 (int ) ;
 int dmu_buf_will_dirty (int ,int *) ;
 TYPE_7__* dsl_dataset_phys (TYPE_3__*) ;
 int dsl_pool_user_hold (TYPE_2__*,scalar_t__,char const*,scalar_t__,int *) ;
 int fnvlist_add_boolean (int *,char const*) ;
 int fnvlist_add_nvlist (int *,char*,int *) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,char*,int **) ;
 int snprintf (char*,int,char*,int ) ;
 int spa_history_log_internal_ds (TYPE_3__*,char*,int *,char*,char const*,int,int ) ;
 int zap_add (int *,scalar_t__,char const*,int,int,scalar_t__*,int *) ;
 scalar_t__ zap_create (int *,int ,int ,int ,int *) ;

__attribute__((used)) static void
dsl_dataset_user_hold_sync_one_impl(nvlist_t *tmpholds, dsl_dataset_t *ds,
    const char *htag, minor_t minor, uint64_t now, dmu_tx_t *tx)
{
 dsl_pool_t *dp = ds->ds_dir->dd_pool;
 objset_t *mos = dp->dp_meta_objset;
 uint64_t zapobj;

 ASSERT(RRW_WRITE_HELD(&dp->dp_config_rwlock));

 if (dsl_dataset_phys(ds)->ds_userrefs_obj == 0) {




  dmu_buf_will_dirty(ds->ds_dbuf, tx);
  zapobj = dsl_dataset_phys(ds)->ds_userrefs_obj =
      zap_create(mos, DMU_OT_USERREFS, DMU_OT_NONE, 0, tx);
 } else {
  zapobj = dsl_dataset_phys(ds)->ds_userrefs_obj;
 }
 ds->ds_userrefs++;

 VERIFY0(zap_add(mos, zapobj, htag, 8, 1, &now, tx));

 if (minor != 0) {
  char name[MAXNAMELEN];
  nvlist_t *tags;

  VERIFY0(dsl_pool_user_hold(dp, ds->ds_object,
      htag, now, tx));
  (void) snprintf(name, sizeof (name), "%llx",
      (u_longlong_t)ds->ds_object);

  if (nvlist_lookup_nvlist(tmpholds, name, &tags) != 0) {
   tags = fnvlist_alloc();
   fnvlist_add_boolean(tags, htag);
   fnvlist_add_nvlist(tmpholds, name, tags);
   fnvlist_free(tags);
  } else {
   fnvlist_add_boolean(tags, htag);
  }
 }

 spa_history_log_internal_ds(ds, "hold", tx,
     "tag=%s temp=%d refs=%llu",
     htag, minor != 0, (u_longlong_t)ds->ds_userrefs);
}
