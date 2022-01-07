
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_14__ {int skcka_dsname; TYPE_5__* skcka_cp; } ;
typedef TYPE_2__ spa_keystore_change_key_args_t ;
struct TYPE_15__ {int dp_spa; } ;
typedef TYPE_3__ dsl_pool_t ;
struct TYPE_16__ {scalar_t__ dd_crypto_obj; scalar_t__ dd_object; struct TYPE_16__* dd_parent; } ;
typedef TYPE_4__ dsl_dir_t ;
struct TYPE_17__ {scalar_t__ cp_cmd; scalar_t__ cp_crypt; TYPE_1__* cp_wkey; int * cp_keylocation; } ;
typedef TYPE_5__ dsl_crypto_params_t ;
typedef int dmu_tx_t ;
struct TYPE_13__ {scalar_t__ wk_keyformat; scalar_t__ wk_salt; scalar_t__ wk_iters; } ;


 int B_TRUE ;
 scalar_t__ DCP_CMD_FORCE_INHERIT ;
 scalar_t__ DCP_CMD_FORCE_NEW_KEY ;
 scalar_t__ DCP_CMD_INHERIT ;
 scalar_t__ DCP_CMD_NEW_KEY ;
 int EINVAL ;
 int ENOTSUP ;
 int FTAG ;
 scalar_t__ MIN_PBKDF2_ITERATIONS ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_ENCRYPTION ;
 scalar_t__ ZFS_KEYFORMAT_FORMATS ;
 scalar_t__ ZFS_KEYFORMAT_NONE ;
 scalar_t__ ZFS_KEYFORMAT_PASSPHRASE ;
 scalar_t__ ZIO_CRYPT_INHERIT ;
 int dmu_objset_check_wkey_loaded (TYPE_4__*) ;
 TYPE_3__* dmu_tx_pool (int *) ;
 int dsl_dir_get_encryption_root_ddobj (TYPE_4__*,scalar_t__*) ;
 int dsl_dir_hold (TYPE_3__*,int ,int ,TYPE_4__**,int *) ;
 scalar_t__ dsl_dir_is_clone (TYPE_4__*) ;
 int dsl_dir_rele (TYPE_4__*,int ) ;
 int spa_feature_is_enabled (int ,int ) ;
 int zfs_prop_valid_keylocation (int *,int ) ;

__attribute__((used)) static int
spa_keystore_change_key_check(void *arg, dmu_tx_t *tx)
{
 int ret;
 dsl_dir_t *dd = ((void*)0);
 dsl_pool_t *dp = dmu_tx_pool(tx);
 spa_keystore_change_key_args_t *skcka = arg;
 dsl_crypto_params_t *dcp = skcka->skcka_cp;
 uint64_t rddobj;


 if (!spa_feature_is_enabled(dp->dp_spa, SPA_FEATURE_ENCRYPTION)) {
  ret = SET_ERROR(ENOTSUP);
  goto error;
 }


 if (dcp->cp_cmd != DCP_CMD_NEW_KEY &&
     dcp->cp_cmd != DCP_CMD_INHERIT &&
     dcp->cp_cmd != DCP_CMD_FORCE_NEW_KEY &&
     dcp->cp_cmd != DCP_CMD_FORCE_INHERIT) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 ret = dsl_dir_hold(dp, skcka->skcka_dsname, FTAG, &dd, ((void*)0));
 if (ret != 0) {
  dd = ((void*)0);
  goto error;
 }


 if (dd->dd_crypto_obj == 0) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 if (dsl_dir_is_clone(dd)) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 ret = dsl_dir_get_encryption_root_ddobj(dd, &rddobj);
 if (ret != 0)
  goto error;


 if (dcp->cp_cmd == DCP_CMD_INHERIT ||
     dcp->cp_cmd == DCP_CMD_FORCE_INHERIT) {

  if (dcp->cp_crypt != ZIO_CRYPT_INHERIT ||
      dcp->cp_keylocation != ((void*)0) ||
      dcp->cp_wkey != ((void*)0)) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }


  if (dd->dd_object != rddobj) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }


  if (dd->dd_parent->dd_crypto_obj == 0) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }


  if (dcp->cp_cmd == DCP_CMD_INHERIT) {
   ret = dmu_objset_check_wkey_loaded(dd);
   if (ret != 0)
    goto error;

   ret = dmu_objset_check_wkey_loaded(dd->dd_parent);
   if (ret != 0)
    goto error;
  }

  dsl_dir_rele(dd, FTAG);
  return (0);
 }


 if (dcp->cp_cmd == DCP_CMD_FORCE_NEW_KEY) {

  if (dcp->cp_crypt != ZIO_CRYPT_INHERIT ||
      dcp->cp_keylocation != ((void*)0) ||
      dcp->cp_wkey != ((void*)0)) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }


  if (dd->dd_object == rddobj) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }

  dsl_dir_rele(dd, FTAG);
  return (0);
 }


 if (dcp->cp_crypt != ZIO_CRYPT_INHERIT) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 if (dcp->cp_wkey == ((void*)0)) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 if (dcp->cp_wkey->wk_keyformat >= ZFS_KEYFORMAT_FORMATS ||
     dcp->cp_wkey->wk_keyformat == ZFS_KEYFORMAT_NONE) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }






 if (dd->dd_object != rddobj && dcp->cp_keylocation == ((void*)0)) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 if (dcp->cp_keylocation != ((void*)0) &&
     !zfs_prop_valid_keylocation(dcp->cp_keylocation, B_TRUE)) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 if (dcp->cp_wkey->wk_keyformat == ZFS_KEYFORMAT_PASSPHRASE) {
  if (dcp->cp_wkey->wk_salt == 0 ||
      dcp->cp_wkey->wk_iters < MIN_PBKDF2_ITERATIONS) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }
 } else {
  if (dcp->cp_wkey->wk_salt != 0 || dcp->cp_wkey->wk_iters != 0) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }
 }


 ret = dmu_objset_check_wkey_loaded(dd);
 if (ret != 0)
  goto error;

 dsl_dir_rele(dd, FTAG);

 return (0);

error:
 if (dd != ((void*)0))
  dsl_dir_rele(dd, FTAG);

 return (ret);
}
