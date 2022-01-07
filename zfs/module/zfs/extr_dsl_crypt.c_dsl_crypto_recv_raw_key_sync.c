
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_18__ {int * dp_meta_objset; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_19__ {scalar_t__ dd_crypto_obj; int dd_object; int dd_dbuf; } ;
typedef TYPE_2__ dsl_dir_t ;
struct TYPE_20__ {void** ds_feature; int ds_object; TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_21__ {TYPE_1__* tx_pool; } ;
typedef TYPE_4__ dmu_tx_t ;


 scalar_t__ B_TRUE ;
 int DD_FIELD_CRYPTO_KEY_OBJ ;
 int DMU_OTN_ZAP_METADATA ;
 int DMU_OT_NONE ;
 int DSL_CRYPTO_KEY_CRYPTO_SUITE ;
 int DSL_CRYPTO_KEY_GUID ;
 int DSL_CRYPTO_KEY_HMAC_KEY ;
 int DSL_CRYPTO_KEY_IV ;
 int DSL_CRYPTO_KEY_MAC ;
 int DSL_CRYPTO_KEY_MASTER_KEY ;
 int DSL_CRYPTO_KEY_REFCOUNT ;
 int DSL_CRYPTO_KEY_VERSION ;
 size_t SPA_FEATURE_ENCRYPTION ;
 int VERIFY0 (int ) ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 int ZIO_CRYPT_KEY_CURRENT_VERSION ;
 int ZPROP_SRC_LOCAL ;
 int dmu_buf_will_dirty (int ,TYPE_4__*) ;
 int dsl_crypto_key_sync_impl (int *,scalar_t__,int,int,int,int *,int *,int *,int *,int,int,int,TYPE_4__*) ;
 int dsl_dataset_activate_feature (int ,size_t,void*,TYPE_4__*) ;
 int dsl_dir_get_encryption_root_ddobj (TYPE_2__*,int*) ;
 int dsl_dir_zapify (TYPE_2__*,TYPE_4__*) ;
 int dsl_prop_set_sync_impl (TYPE_3__*,int ,int ,int,scalar_t__,char*,TYPE_4__*) ;
 int fnvlist_lookup_uint64 (int *,int ) ;
 int nvlist_lookup_uint8_array (int *,int ,int **,int *) ;
 scalar_t__ strlen (char*) ;
 int zap_add (int *,int,int ,int,int,scalar_t__*,TYPE_4__*) ;
 scalar_t__ zap_create (int *,int ,int ,int ,TYPE_4__*) ;
 int zap_update (int *,scalar_t__,int ,int,int,int*,TYPE_4__*) ;
 int zfs_prop_to_name (int ) ;

void
dsl_crypto_recv_raw_key_sync(dsl_dataset_t *ds, nvlist_t *nvl, dmu_tx_t *tx)
{
 dsl_pool_t *dp = tx->tx_pool;
 objset_t *mos = dp->dp_meta_objset;
 dsl_dir_t *dd = ds->ds_dir;
 uint_t len;
 uint64_t rddobj, one = 1;
 uint8_t *keydata, *hmac_keydata, *iv, *mac;
 uint64_t crypt, key_guid, keyformat, iters, salt;
 uint64_t version = ZIO_CRYPT_KEY_CURRENT_VERSION;
 char *keylocation = "prompt";


 crypt = fnvlist_lookup_uint64(nvl, DSL_CRYPTO_KEY_CRYPTO_SUITE);
 key_guid = fnvlist_lookup_uint64(nvl, DSL_CRYPTO_KEY_GUID);
 keyformat = fnvlist_lookup_uint64(nvl,
     zfs_prop_to_name(ZFS_PROP_KEYFORMAT));
 iters = fnvlist_lookup_uint64(nvl,
     zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS));
 salt = fnvlist_lookup_uint64(nvl,
     zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT));
 VERIFY0(nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_MASTER_KEY,
     &keydata, &len));
 VERIFY0(nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_HMAC_KEY,
     &hmac_keydata, &len));
 VERIFY0(nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_IV, &iv, &len));
 VERIFY0(nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_MAC, &mac, &len));


 if (dd->dd_crypto_obj == 0) {

  dmu_buf_will_dirty(dd->dd_dbuf, tx);
  dsl_dir_zapify(dd, tx);


  dd->dd_crypto_obj = zap_create(mos,
      DMU_OTN_ZAP_METADATA, DMU_OT_NONE, 0, tx);
  VERIFY0(zap_update(tx->tx_pool->dp_meta_objset,
      dd->dd_crypto_obj, DSL_CRYPTO_KEY_REFCOUNT,
      sizeof (uint64_t), 1, &one, tx));
  VERIFY0(zap_update(tx->tx_pool->dp_meta_objset,
      dd->dd_crypto_obj, DSL_CRYPTO_KEY_VERSION,
      sizeof (uint64_t), 1, &version, tx));

  dsl_dataset_activate_feature(ds->ds_object,
      SPA_FEATURE_ENCRYPTION, (void *)B_TRUE, tx);
  ds->ds_feature[SPA_FEATURE_ENCRYPTION] = (void *)B_TRUE;


  VERIFY0(zap_add(mos, dd->dd_object, DD_FIELD_CRYPTO_KEY_OBJ,
      sizeof (uint64_t), 1, &dd->dd_crypto_obj, tx));






  dsl_prop_set_sync_impl(ds,
      zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
      ZPROP_SRC_LOCAL, 1, strlen(keylocation) + 1,
      keylocation, tx);

  rddobj = dd->dd_object;
 } else {
  VERIFY0(dsl_dir_get_encryption_root_ddobj(dd, &rddobj));
 }


 dsl_crypto_key_sync_impl(mos, dd->dd_crypto_obj, crypt,
     rddobj, key_guid, iv, mac, keydata, hmac_keydata, keyformat, salt,
     iters, tx);
}
