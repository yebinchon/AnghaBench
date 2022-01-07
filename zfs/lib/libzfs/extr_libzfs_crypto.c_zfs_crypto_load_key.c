
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zfs_hdl; int zfs_name; int zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int prop_keylocation ;
typedef int errbuf ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;





 int EZFS_CRYPTOFAILED ;
 int MAXNAMELEN ;
 int MAX_KEY_PROMPT_ATTEMPTS ;
 int TEXT_DOMAIN ;
 int WRAPPING_KEY_LEN ;
 scalar_t__ ZFS_KEYFORMAT_NONE ;
 scalar_t__ ZFS_KEYFORMAT_PASSPHRASE ;
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_PROP_KEYSTATUS ;
 int ZFS_PROP_PBKDF2_ITERS ;
 int ZFS_PROP_PBKDF2_SALT ;
 int derive_key (int ,scalar_t__,scalar_t__,int *,size_t,scalar_t__,int **) ;
 char* dgettext (int ,char*) ;
 int encryption_feature_is_enabled (int ) ;
 int free (int *) ;
 int get_key_material (int ,scalar_t__,scalar_t__,scalar_t__,char*,int ,int **,size_t*,scalar_t__*) ;
 int lzc_load_key (int ,scalar_t__,int *,int ) ;
 int snprintf (char*,int,char*) ;
 int zfs_crypto_get_encryption_root (TYPE_1__*,scalar_t__*,char*) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,char*,...) ;
 int zfs_get_name (TYPE_1__*) ;
 int zfs_prop_get (TYPE_1__*,int ,char*,int,int *,int *,int ,scalar_t__) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;

int
zfs_crypto_load_key(zfs_handle_t *zhp, boolean_t noop, char *alt_keylocation)
{
 int ret, attempts = 0;
 char errbuf[1024];
 uint64_t keystatus, iters = 0, salt = 0;
 uint64_t keyformat = ZFS_KEYFORMAT_NONE;
 char prop_keylocation[MAXNAMELEN];
 char prop_encroot[MAXNAMELEN];
 char *keylocation = ((void*)0);
 uint8_t *key_material = ((void*)0), *key_data = ((void*)0);
 size_t key_material_len;
 boolean_t is_encroot, can_retry = B_FALSE, correctible = B_FALSE;

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "Key load error"));


 if (!encryption_feature_is_enabled(zhp->zpool_hdl)) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Encryption feature not enabled."));
  ret = 129;
  goto error;
 }


 keyformat = zfs_prop_get_int(zhp, ZFS_PROP_KEYFORMAT);
 if (keyformat == ZFS_KEYFORMAT_NONE) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "'%s' is not encrypted."), zfs_get_name(zhp));
  ret = 129;
  goto error;
 }





 ret = zfs_crypto_get_encryption_root(zhp, &is_encroot, prop_encroot);
 if (ret != 0) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Failed to get encryption root for '%s'."),
      zfs_get_name(zhp));
  goto error;
 } else if (!is_encroot) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Keys must be loaded for encryption root of '%s' (%s)."),
      zfs_get_name(zhp), prop_encroot);
  ret = 129;
  goto error;
 }





 if (alt_keylocation != ((void*)0)) {
  keylocation = alt_keylocation;
 } else {
  ret = zfs_prop_get(zhp, ZFS_PROP_KEYLOCATION, prop_keylocation,
      sizeof (prop_keylocation), ((void*)0), ((void*)0), 0, B_TRUE);
  if (ret != 0) {
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Failed to get keylocation for '%s'."),
       zfs_get_name(zhp));
   goto error;
  }

  keylocation = prop_keylocation;
 }


 if (!noop) {
  keystatus = zfs_prop_get_int(zhp, ZFS_PROP_KEYSTATUS);
  if (keystatus == ZFS_KEYSTATUS_AVAILABLE) {
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Key already loaded for '%s'."), zfs_get_name(zhp));
   ret = 130;
   goto error;
  }
 }


 if (keyformat == ZFS_KEYFORMAT_PASSPHRASE) {
  salt = zfs_prop_get_int(zhp, ZFS_PROP_PBKDF2_SALT);
  iters = zfs_prop_get_int(zhp, ZFS_PROP_PBKDF2_ITERS);
 }

try_again:

 correctible = B_TRUE;


 ret = get_key_material(zhp->zfs_hdl, B_FALSE, B_FALSE, keyformat,
     keylocation, zfs_get_name(zhp), &key_material, &key_material_len,
     &can_retry);
 if (ret != 0)
  goto error;


 ret = derive_key(zhp->zfs_hdl, keyformat, iters, key_material,
     key_material_len, salt, &key_data);
 if (ret != 0)
  goto error;

 correctible = B_FALSE;


 ret = lzc_load_key(zhp->zfs_name, noop, key_data, WRAPPING_KEY_LEN);
 if (ret != 0) {
  switch (ret) {
  case 128:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Permission denied."));
   break;
  case 129:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Invalid parameters provided for dataset %s."),
       zfs_get_name(zhp));
   break;
  case 130:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Key already loaded for '%s'."), zfs_get_name(zhp));
   break;
  case 131:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "'%s' is busy."), zfs_get_name(zhp));
   break;
  case 132:
   correctible = B_TRUE;
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Incorrect key provided for '%s'."),
       zfs_get_name(zhp));
   break;
  }
  goto error;
 }

 free(key_material);
 free(key_data);

 return (0);

error:
 zfs_error(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
 if (key_material != ((void*)0)) {
  free(key_material);
  key_material = ((void*)0);
 }
 if (key_data != ((void*)0)) {
  free(key_data);
  key_data = ((void*)0);
 }
 attempts++;
 if (can_retry && correctible && attempts < MAX_KEY_PROMPT_ATTEMPTS)
  goto try_again;

 return (ret);
}
