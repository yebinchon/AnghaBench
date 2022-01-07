
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int dsl_wrapping_key_t ;
struct TYPE_5__ {scalar_t__ cp_cmd; scalar_t__ cp_crypt; int * cp_wkey; int cp_keylocation; } ;
typedef TYPE_1__ dsl_crypto_params_t ;
typedef void* dcp_cmd_t ;


 int B_FALSE ;
 scalar_t__ DCP_CMD_MAX ;
 int EINVAL ;
 int ENOMEM ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 scalar_t__ WRAPPING_KEY_LEN ;
 scalar_t__ ZFS_KEYFORMAT_FORMATS ;
 scalar_t__ ZFS_KEYFORMAT_NONE ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 scalar_t__ ZIO_CRYPT_FUNCTIONS ;
 scalar_t__ ZIO_CRYPT_INHERIT ;
 scalar_t__ ZIO_CRYPT_ON ;
 scalar_t__ ZIO_CRYPT_ON_VALUE ;
 int dsl_wrapping_key_create (int *,scalar_t__,scalar_t__,scalar_t__,int **) ;
 int dsl_wrapping_key_free (int *) ;
 int kmem_free (TYPE_1__*,int) ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int nvlist_lookup_uint8_array (int *,char*,int **,scalar_t__*) ;
 int nvlist_remove_all (int *,int ) ;
 int spa_strdup (char*) ;
 int zfs_prop_to_name (int ) ;
 int zfs_prop_valid_keylocation (char*,int ) ;

int
dsl_crypto_params_create_nvlist(dcp_cmd_t cmd, nvlist_t *props,
    nvlist_t *crypto_args, dsl_crypto_params_t **dcp_out)
{
 int ret;
 uint64_t crypt = ZIO_CRYPT_INHERIT;
 uint64_t keyformat = ZFS_KEYFORMAT_NONE;
 uint64_t salt = 0, iters = 0;
 dsl_crypto_params_t *dcp = ((void*)0);
 dsl_wrapping_key_t *wkey = ((void*)0);
 uint8_t *wkeydata = ((void*)0);
 uint_t wkeydata_len = 0;
 char *keylocation = ((void*)0);

 dcp = kmem_zalloc(sizeof (dsl_crypto_params_t), KM_SLEEP);
 if (!dcp) {
  ret = SET_ERROR(ENOMEM);
  goto error;
 }

 dcp->cp_cmd = cmd;


 if (props != ((void*)0)) {
  (void) nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_ENCRYPTION), &crypt);
  (void) nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_KEYFORMAT), &keyformat);
  (void) nvlist_lookup_string(props,
      zfs_prop_to_name(ZFS_PROP_KEYLOCATION), &keylocation);
  (void) nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT), &salt);
  (void) nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS), &iters);

  dcp->cp_crypt = crypt;
 }

 if (crypto_args != ((void*)0)) {
  (void) nvlist_lookup_uint8_array(crypto_args, "wkeydata",
      &wkeydata, &wkeydata_len);
 }


 if (dcp->cp_cmd >= DCP_CMD_MAX) {
  ret = SET_ERROR(EINVAL);
  goto error;
 } else {
  dcp->cp_cmd = cmd;
 }


 if (dcp->cp_crypt >= ZIO_CRYPT_FUNCTIONS) {
  ret = SET_ERROR(EINVAL);
  goto error;
 } else {
  dcp->cp_crypt = crypt;
 }


 if (keyformat >= ZFS_KEYFORMAT_FORMATS) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 if (keylocation != ((void*)0)) {
  if (!zfs_prop_valid_keylocation(keylocation, B_FALSE)) {
   ret = SET_ERROR(EINVAL);
   goto error;
  }

  dcp->cp_keylocation = spa_strdup(keylocation);
 }


 if (wkeydata != ((void*)0) && wkeydata_len != WRAPPING_KEY_LEN) {
  ret = SET_ERROR(EINVAL);
  goto error;
 }


 if (dcp->cp_crypt == ZIO_CRYPT_ON)
  dcp->cp_crypt = ZIO_CRYPT_ON_VALUE;


 if (wkeydata != ((void*)0)) {

  ret = dsl_wrapping_key_create(wkeydata, keyformat, salt,
      iters, &wkey);
  if (ret != 0)
   goto error;

  dcp->cp_wkey = wkey;
 }





 (void) nvlist_remove_all(props, zfs_prop_to_name(ZFS_PROP_ENCRYPTION));
 (void) nvlist_remove_all(props, zfs_prop_to_name(ZFS_PROP_KEYFORMAT));
 (void) nvlist_remove_all(props, zfs_prop_to_name(ZFS_PROP_PBKDF2_SALT));
 (void) nvlist_remove_all(props,
     zfs_prop_to_name(ZFS_PROP_PBKDF2_ITERS));

 *dcp_out = dcp;

 return (0);

error:
 if (wkey != ((void*)0))
  dsl_wrapping_key_free(wkey);
 if (dcp != ((void*)0))
  kmem_free(dcp, sizeof (dsl_crypto_params_t));

 *dcp_out = ((void*)0);
 return (ret);
}
