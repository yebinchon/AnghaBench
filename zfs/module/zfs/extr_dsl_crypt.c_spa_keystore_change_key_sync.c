
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_24__ {int sk_wkeys_lock; int sk_wkeys; } ;
struct TYPE_25__ {TYPE_1__ spa_keystore; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_26__ {int skcka_dsname; TYPE_7__* skcka_cp; } ;
typedef TYPE_3__ spa_keystore_change_key_args_t ;
struct TYPE_27__ {int wk_refcnt; int wk_ddobj; } ;
typedef TYPE_4__ dsl_wrapping_key_t ;
struct TYPE_28__ {TYPE_2__* dp_spa; } ;
typedef TYPE_5__ dsl_pool_t ;
struct TYPE_29__ {TYPE_9__* ds_dir; int ds_is_snapshot; } ;
typedef TYPE_6__ dsl_dataset_t ;
struct TYPE_30__ {char* cp_keylocation; scalar_t__ cp_cmd; TYPE_4__* cp_wkey; } ;
typedef TYPE_7__ dsl_crypto_params_t ;
typedef int dmu_tx_t ;
typedef int avl_index_t ;
struct TYPE_31__ {int dd_object; struct TYPE_31__* dd_parent; } ;


 int ASSERT (int) ;
 int ASSERT0 (int ) ;
 int B_FALSE ;
 scalar_t__ DCP_CMD_FORCE_INHERIT ;
 scalar_t__ DCP_CMD_FORCE_NEW_KEY ;
 scalar_t__ DCP_CMD_INHERIT ;
 scalar_t__ DCP_CMD_NEW_KEY ;
 int FTAG ;
 int RW_WRITER ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_KEYLOCATION ;
 int ZPROP_SRC_LOCAL ;
 int ZPROP_SRC_NONE ;
 TYPE_4__* avl_find (int *,TYPE_4__*,int *) ;
 int avl_insert (int *,TYPE_4__*,int ) ;
 int avl_remove (int *,TYPE_4__*) ;
 TYPE_5__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_5__*,int ,int ,TYPE_6__**) ;
 int dsl_dataset_rele (TYPE_6__*,int ) ;
 int dsl_dir_get_encryption_root_ddobj (TYPE_9__*,int *) ;
 int dsl_prop_set_sync_impl (TYPE_6__*,int ,int ,int,scalar_t__,char*,int *) ;
 int dsl_wrapping_key_free (TYPE_4__*) ;
 int dsl_wrapping_key_rele (TYPE_4__*,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_keystore_change_key_sync_impl (int ,int ,int ,TYPE_4__*,int ,int *) ;
 int spa_keystore_wkey_hold_dd (TYPE_2__*,TYPE_9__*,int ,TYPE_4__**) ;
 scalar_t__ strlen (char*) ;
 int zfs_prop_to_name (int ) ;
 int zfs_refcount_count (int *) ;

__attribute__((used)) static void
spa_keystore_change_key_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_t *ds;
 avl_index_t where;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 spa_t *spa = dp->dp_spa;
 spa_keystore_change_key_args_t *skcka = arg;
 dsl_crypto_params_t *dcp = skcka->skcka_cp;
 dsl_wrapping_key_t *wkey = ((void*)0), *found_wkey;
 dsl_wrapping_key_t wkey_search;
 char *keylocation = dcp->cp_keylocation;
 uint64_t rddobj, new_rddobj;


 VERIFY0(dsl_dataset_hold(dp, skcka->skcka_dsname, FTAG, &ds));
 ASSERT(!ds->ds_is_snapshot);

 if (dcp->cp_cmd == DCP_CMD_NEW_KEY ||
     dcp->cp_cmd == DCP_CMD_FORCE_NEW_KEY) {






  if (dcp->cp_cmd == DCP_CMD_NEW_KEY) {
   wkey = dcp->cp_wkey;
   wkey->wk_ddobj = ds->ds_dir->dd_object;
  } else {
   keylocation = "prompt";
  }

  if (keylocation != ((void*)0)) {
   dsl_prop_set_sync_impl(ds,
       zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
       ZPROP_SRC_LOCAL, 1, strlen(keylocation) + 1,
       keylocation, tx);
  }

  VERIFY0(dsl_dir_get_encryption_root_ddobj(ds->ds_dir, &rddobj));
  new_rddobj = ds->ds_dir->dd_object;
 } else {




  if (dcp->cp_cmd == DCP_CMD_INHERIT) {
   VERIFY0(spa_keystore_wkey_hold_dd(spa,
       ds->ds_dir->dd_parent, FTAG, &wkey));
  }

  dsl_prop_set_sync_impl(ds,
      zfs_prop_to_name(ZFS_PROP_KEYLOCATION), ZPROP_SRC_NONE,
      0, 0, ((void*)0), tx);

  rddobj = ds->ds_dir->dd_object;
  VERIFY0(dsl_dir_get_encryption_root_ddobj(ds->ds_dir->dd_parent,
      &new_rddobj));
 }

 if (wkey == ((void*)0)) {
  ASSERT(dcp->cp_cmd == DCP_CMD_FORCE_INHERIT ||
      dcp->cp_cmd == DCP_CMD_FORCE_NEW_KEY);
 }

 rw_enter(&spa->spa_keystore.sk_wkeys_lock, RW_WRITER);


 spa_keystore_change_key_sync_impl(rddobj, ds->ds_dir->dd_object,
     new_rddobj, wkey, B_FALSE, tx);





 wkey_search.wk_ddobj = ds->ds_dir->dd_object;
 found_wkey = avl_find(&spa->spa_keystore.sk_wkeys, &wkey_search, ((void*)0));
 if (found_wkey != ((void*)0)) {
  ASSERT0(zfs_refcount_count(&found_wkey->wk_refcnt));
  avl_remove(&spa->spa_keystore.sk_wkeys, found_wkey);
  dsl_wrapping_key_free(found_wkey);
 }

 if (dcp->cp_cmd == DCP_CMD_NEW_KEY) {
  avl_find(&spa->spa_keystore.sk_wkeys, wkey, &where);
  avl_insert(&spa->spa_keystore.sk_wkeys, wkey, where);
 } else if (wkey != ((void*)0)) {
  dsl_wrapping_key_rele(wkey, FTAG);
 }

 rw_exit(&spa->spa_keystore.sk_wkeys_lock);

 dsl_dataset_rele(ds, FTAG);
}
