
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int EINVAL ;
 int ENOENT ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_KEYFORMAT_NONE ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 scalar_t__ ZIO_CRYPT_INHERIT ;
 scalar_t__ ZIO_CRYPT_OFF ;
 char* dgettext (int ,char*) ;
 int encryption_feature_is_enabled (int ) ;
 int free (int *) ;
 TYPE_1__* make_dataset_handle (int *,char*) ;
 int nvlist_add_string (int *,int ,char*) ;
 int nvlist_exists (int *,char*) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int populate_create_encryption_params_nvlists (int *,int *,int ,scalar_t__,char*,int *,int **,int *) ;
 scalar_t__ proplist_has_encryption_props (int *) ;
 int snprintf (char*,int,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_error_aux (int *,char*) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_prop_to_name (int ) ;

int
zfs_crypto_create(libzfs_handle_t *hdl, char *parent_name, nvlist_t *props,
    nvlist_t *pool_props, boolean_t stdin_available, uint8_t **wkeydata_out,
    uint_t *wkeylen_out)
{
 int ret;
 char errbuf[1024];
 uint64_t crypt = ZIO_CRYPT_INHERIT, pcrypt = ZIO_CRYPT_INHERIT;
 uint64_t keyformat = ZFS_KEYFORMAT_NONE;
 char *keylocation = ((void*)0);
 zfs_handle_t *pzhp = ((void*)0);
 uint8_t *wkeydata = ((void*)0);
 uint_t wkeylen = 0;
 boolean_t local_crypt = B_TRUE;

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "Encryption create error"));


 ret = nvlist_lookup_uint64(props,
     zfs_prop_to_name(ZFS_PROP_ENCRYPTION), &crypt);
 if (ret != 0)
  local_crypt = B_FALSE;


 (void) nvlist_lookup_uint64(props,
     zfs_prop_to_name(ZFS_PROP_KEYFORMAT), &keyformat);
 (void) nvlist_lookup_string(props,
     zfs_prop_to_name(ZFS_PROP_KEYLOCATION), &keylocation);

 if (parent_name != ((void*)0)) {

  pzhp = make_dataset_handle(hdl, parent_name);
  if (pzhp == ((void*)0)) {
   ret = ENOENT;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Failed to lookup parent."));
   goto out;
  }


  pcrypt = zfs_prop_get_int(pzhp, ZFS_PROP_ENCRYPTION);


  if (!encryption_feature_is_enabled(pzhp->zpool_hdl)) {
   if (proplist_has_encryption_props(props)) {
    ret = EINVAL;
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "Encryption feature not enabled."));
    goto out;
   }

   ret = 0;
   goto out;
  }
 } else {




  if (!nvlist_exists(pool_props, "feature@encryption")) {
   if (proplist_has_encryption_props(props)) {
    ret = EINVAL;
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "Encryption feature not enabled."));
    goto out;
   }

   ret = 0;
   goto out;
  }

  pcrypt = ZIO_CRYPT_OFF;
 }


 if (!local_crypt)
  crypt = pcrypt;






 if (crypt == ZIO_CRYPT_OFF) {
  if (proplist_has_encryption_props(props)) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Encryption must be turned on to set encryption "
       "properties."));
   goto out;
  }

  ret = 0;
  goto out;
 }







 if (pcrypt == ZIO_CRYPT_OFF && keylocation == ((void*)0) &&
     keyformat == ZFS_KEYFORMAT_NONE) {
  ret = EINVAL;
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "Keyformat required for new encryption root."));
  goto out;
 }





 if (keylocation != ((void*)0) && keyformat == ZFS_KEYFORMAT_NONE) {
  ret = EINVAL;
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "Keyformat required for new encryption root."));
  goto out;
 }


 if (keyformat != ZFS_KEYFORMAT_NONE && keylocation == ((void*)0)) {
  keylocation = "prompt";
  ret = nvlist_add_string(props,
      zfs_prop_to_name(ZFS_PROP_KEYLOCATION), keylocation);
  if (ret != 0)
   goto out;
 }





 if (keylocation != ((void*)0)) {




  if (!stdin_available && strcmp(keylocation, "prompt") == 0) {
   ret = EINVAL;
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "Cannot use "
       "'prompt' keylocation because stdin is in use."));
   goto out;
  }

  ret = populate_create_encryption_params_nvlists(hdl, ((void*)0),
      B_FALSE, keyformat, keylocation, props, &wkeydata,
      &wkeylen);
  if (ret != 0)
   goto out;
 }

 if (pzhp != ((void*)0))
  zfs_close(pzhp);

 *wkeydata_out = wkeydata;
 *wkeylen_out = wkeylen;
 return (0);

out:
 if (pzhp != ((void*)0))
  zfs_close(pzhp);
 if (wkeydata != ((void*)0))
  free(wkeydata);

 *wkeydata_out = ((void*)0);
 *wkeylen_out = 0;
 return (ret);
}
