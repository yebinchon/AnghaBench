
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_15__ {TYPE_2__* dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;
struct TYPE_16__ {scalar_t__ dd_crypto_obj; int dd_object; TYPE_3__* dd_pool; } ;
typedef TYPE_4__ dsl_dir_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_17__ {int dd_head_dataset_obj; } ;
struct TYPE_13__ {int sk_wkeys_lock; } ;
struct TYPE_14__ {TYPE_1__ spa_keystore; } ;


 int B_FALSE ;
 int FTAG ;
 int KM_SLEEP ;
 int RW_WRITER ;
 int VERIFY0 (int ) ;
 int ZAP_MAXVALUELEN ;
 int ZFS_PROP_KEYLOCATION ;
 int ZPROP_SRC_LOCAL ;
 int ZPROP_SRC_NONE ;
 int dsl_dataset_hold_obj (TYPE_3__*,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dir_get_encryption_root_ddobj (TYPE_4__*,int *) ;
 scalar_t__ dsl_dir_is_clone (TYPE_4__*) ;
 TYPE_6__* dsl_dir_phys (TYPE_4__*) ;
 int dsl_prop_get_dd (TYPE_4__*,int ,int,int ,char*,int *,int ) ;
 int dsl_prop_set_sync_impl (int *,int ,int ,int,scalar_t__,char*,int *) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int spa_keystore_change_key_sync_impl (int ,int ,int ,int *,int ,int *) ;
 scalar_t__ strlen (char*) ;
 int zfs_prop_to_name (int ) ;

void
dsl_dataset_promote_crypt_sync(dsl_dir_t *target, dsl_dir_t *origin,
    dmu_tx_t *tx)
{
 uint64_t rddobj;
 dsl_pool_t *dp = target->dd_pool;
 dsl_dataset_t *targetds;
 dsl_dataset_t *originds;
 char *keylocation;

 if (origin->dd_crypto_obj == 0)
  return;
 if (dsl_dir_is_clone(origin))
  return;

 VERIFY0(dsl_dir_get_encryption_root_ddobj(origin, &rddobj));

 if (rddobj != origin->dd_object)
  return;
 keylocation = kmem_alloc(ZAP_MAXVALUELEN, KM_SLEEP);

 VERIFY0(dsl_dataset_hold_obj(dp,
     dsl_dir_phys(target)->dd_head_dataset_obj, FTAG, &targetds));
 VERIFY0(dsl_dataset_hold_obj(dp,
     dsl_dir_phys(origin)->dd_head_dataset_obj, FTAG, &originds));

 VERIFY0(dsl_prop_get_dd(origin, zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
     1, ZAP_MAXVALUELEN, keylocation, ((void*)0), B_FALSE));
 dsl_prop_set_sync_impl(targetds, zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
     ZPROP_SRC_LOCAL, 1, strlen(keylocation) + 1, keylocation, tx);
 dsl_prop_set_sync_impl(originds, zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
     ZPROP_SRC_NONE, 0, 0, ((void*)0), tx);

 rw_enter(&dp->dp_spa->spa_keystore.sk_wkeys_lock, RW_WRITER);
 spa_keystore_change_key_sync_impl(rddobj, origin->dd_object,
     target->dd_object, ((void*)0), B_FALSE, tx);
 rw_exit(&dp->dp_spa->spa_keystore.sk_wkeys_lock);

 dsl_dataset_rele(targetds, FTAG);
 dsl_dataset_rele(originds, FTAG);
 kmem_free(keylocation, ZAP_MAXVALUELEN);
}
