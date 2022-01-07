
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_11__ {scalar_t__ dd_crypto_obj; TYPE_5__* dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
struct TYPE_12__ {scalar_t__ ds_object; TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_13__ {int dp_meta_objset; } ;


 int DSL_CRYPTO_KEY_GUID ;
 int DS_FIELD_IVSET_GUID ;
 int FTAG ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_ENCRYPTION_ROOT ;
 int ZFS_PROP_IVSET_GUID ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYSTATUS ;
 int ZFS_PROP_KEY_GUID ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 int dsl_dataset_get_keystatus (TYPE_1__*) ;
 scalar_t__ dsl_dir_get_crypt (TYPE_1__*,int *) ;
 scalar_t__ dsl_dir_get_encryption_root_ddobj (TYPE_1__*,int *) ;
 scalar_t__ dsl_dir_hold_obj (TYPE_5__*,int ,int *,int ,TYPE_1__**) ;
 int dsl_dir_name (TYPE_1__*,char*) ;
 int dsl_dir_rele (TYPE_1__*,int ) ;
 int dsl_prop_nvlist_add_string (int *,int ,char*) ;
 int dsl_prop_nvlist_add_uint64 (int *,int ,int ) ;
 scalar_t__ zap_lookup (int ,scalar_t__,int ,int,int,int *) ;
 int zfs_prop_to_name (int ) ;

void
dsl_dataset_crypt_stats(dsl_dataset_t *ds, nvlist_t *nv)
{
 uint64_t intval;
 dsl_dir_t *dd = ds->ds_dir;
 dsl_dir_t *enc_root;
 char buf[ZFS_MAX_DATASET_NAME_LEN];

 if (dd->dd_crypto_obj == 0)
  return;

 intval = dsl_dataset_get_keystatus(dd);
 dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_KEYSTATUS, intval);

 if (dsl_dir_get_crypt(dd, &intval) == 0)
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_ENCRYPTION, intval);
 if (zap_lookup(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
     DSL_CRYPTO_KEY_GUID, 8, 1, &intval) == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_KEY_GUID, intval);
 }
 if (zap_lookup(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
     zfs_prop_to_name(ZFS_PROP_KEYFORMAT), 8, 1, &intval) == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_KEYFORMAT, intval);
 }
 if (zap_lookup(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
     zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT), 8, 1, &intval) == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_PBKDF2_SALT, intval);
 }
 if (zap_lookup(dd->dd_pool->dp_meta_objset, dd->dd_crypto_obj,
     zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS), 8, 1, &intval) == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_PBKDF2_ITERS, intval);
 }
 if (zap_lookup(dd->dd_pool->dp_meta_objset, ds->ds_object,
     DS_FIELD_IVSET_GUID, 8, 1, &intval) == 0) {
  dsl_prop_nvlist_add_uint64(nv, ZFS_PROP_IVSET_GUID, intval);
 }

 if (dsl_dir_get_encryption_root_ddobj(dd, &intval) == 0) {
  if (dsl_dir_hold_obj(dd->dd_pool, intval, ((void*)0), FTAG,
      &enc_root) == 0) {
   dsl_dir_name(enc_root, buf);
   dsl_dir_rele(enc_root, FTAG);
   dsl_prop_nvlist_add_string(nv,
       ZFS_PROP_ENCRYPTION_ROOT, buf);
  }
 }
}
