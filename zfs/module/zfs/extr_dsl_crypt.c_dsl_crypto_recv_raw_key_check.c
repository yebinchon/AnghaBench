
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int objset_t ;
typedef int nvlist_t ;
struct TYPE_11__ {TYPE_2__* ds_dir; } ;
typedef TYPE_3__ dsl_dataset_t ;
struct TYPE_12__ {TYPE_1__* tx_pool; } ;
typedef TYPE_4__ dmu_tx_t ;
typedef int boolean_t ;
struct TYPE_13__ {int ds_flags; } ;
struct TYPE_10__ {int dd_crypto_obj; } ;
struct TYPE_9__ {int * dp_meta_objset; } ;


 int ASSERT (int) ;
 int B_FALSE ;
 int DSL_CRYPTO_KEY_CRYPTO_SUITE ;
 int DSL_CRYPTO_KEY_GUID ;
 int DSL_CRYPTO_KEY_HMAC_KEY ;
 int DSL_CRYPTO_KEY_IV ;
 int DSL_CRYPTO_KEY_MAC ;
 int DSL_CRYPTO_KEY_MASTER_KEY ;
 int DSL_CRYPTO_KEY_VERSION ;
 int DS_FLAG_INCONSISTENT ;
 int EACCES ;
 int EINVAL ;
 int ENOTSUP ;
 scalar_t__ MASTER_KEY_MAX_LEN ;
 int SET_ERROR (int ) ;
 scalar_t__ SHA512_HMAC_KEYLEN ;
 scalar_t__ WRAPPING_IV_LEN ;
 scalar_t__ WRAPPING_MAC_LEN ;
 scalar_t__ ZFS_KEYFORMAT_FORMATS ;
 scalar_t__ ZFS_KEYFORMAT_NONE ;
 scalar_t__ ZFS_KEYFORMAT_PASSPHRASE ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 scalar_t__ ZIO_CRYPT_FUNCTIONS ;
 scalar_t__ ZIO_CRYPT_KEY_CURRENT_VERSION ;
 scalar_t__ ZIO_CRYPT_OFF ;
 TYPE_5__* dsl_dataset_phys (TYPE_3__*) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int nvlist_lookup_uint8_array (int *,int ,int **,scalar_t__*) ;
 int zap_lookup (int *,int ,int ,int,int,scalar_t__*) ;
 int zfs_prop_to_name (int ) ;

int
dsl_crypto_recv_raw_key_check(dsl_dataset_t *ds, nvlist_t *nvl, dmu_tx_t *tx)
{
 int ret;
 objset_t *mos = tx->tx_pool->dp_meta_objset;
 uint8_t *buf = ((void*)0);
 uint_t len;
 uint64_t intval, key_guid, version;
 boolean_t is_passphrase = B_FALSE;

 ASSERT(dsl_dataset_phys(ds)->ds_flags & DS_FLAG_INCONSISTENT);






 ret = nvlist_lookup_uint64(nvl, DSL_CRYPTO_KEY_CRYPTO_SUITE, &intval);
 if (ret != 0 || intval >= ZIO_CRYPT_FUNCTIONS ||
     intval <= ZIO_CRYPT_OFF)
  return (SET_ERROR(EINVAL));

 ret = nvlist_lookup_uint64(nvl, DSL_CRYPTO_KEY_GUID, &intval);
 if (ret != 0)
  return (SET_ERROR(EINVAL));





 if (ds->ds_dir->dd_crypto_obj != 0) {
  ret = zap_lookup(mos, ds->ds_dir->dd_crypto_obj,
      DSL_CRYPTO_KEY_GUID, 8, 1, &key_guid);
  if (ret != 0)
   return (ret);
  if (intval != key_guid)
   return (SET_ERROR(EACCES));
 }

 ret = nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_MASTER_KEY,
     &buf, &len);
 if (ret != 0 || len != MASTER_KEY_MAX_LEN)
  return (SET_ERROR(EINVAL));

 ret = nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_HMAC_KEY,
     &buf, &len);
 if (ret != 0 || len != SHA512_HMAC_KEYLEN)
  return (SET_ERROR(EINVAL));

 ret = nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_IV, &buf, &len);
 if (ret != 0 || len != WRAPPING_IV_LEN)
  return (SET_ERROR(EINVAL));

 ret = nvlist_lookup_uint8_array(nvl, DSL_CRYPTO_KEY_MAC, &buf, &len);
 if (ret != 0 || len != WRAPPING_MAC_LEN)
  return (SET_ERROR(EINVAL));







 ret = nvlist_lookup_uint64(nvl, DSL_CRYPTO_KEY_VERSION, &version);
 if (ret != 0 || version != ZIO_CRYPT_KEY_CURRENT_VERSION)
  return (SET_ERROR(ENOTSUP));

 ret = nvlist_lookup_uint64(nvl, zfs_prop_to_name(ZFS_PROP_KEYFORMAT),
     &intval);
 if (ret != 0 || intval >= ZFS_KEYFORMAT_FORMATS ||
     intval == ZFS_KEYFORMAT_NONE)
  return (SET_ERROR(EINVAL));

 is_passphrase = (intval == ZFS_KEYFORMAT_PASSPHRASE);





 ret = nvlist_lookup_uint64(nvl, zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS),
     &intval);
 if (ret != 0 || (is_passphrase == (intval == 0)))
  return (SET_ERROR(EINVAL));

 ret = nvlist_lookup_uint64(nvl, zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT),
     &intval);
 if (ret != 0 || (is_passphrase == (intval == 0)))
  return (SET_ERROR(EINVAL));

 return (0);
}
