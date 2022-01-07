
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int zfs_hdl; int zfs_name; int zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int prop_keylocation ;
typedef int parent_name ;
typedef int origin_name ;
typedef int nvlist_t ;
typedef int errbuf ;
typedef int dcp_cmd_t ;
typedef scalar_t__ boolean_t ;


 int B_TRUE ;
 int DCP_CMD_INHERIT ;
 int DCP_CMD_NEW_KEY ;


 int ENOENT ;

 int EZFS_CRYPTOFAILED ;
 int MAXNAMELEN ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_KEYFORMAT_NONE ;
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYLOCATION ;
 int ZFS_PROP_KEYSTATUS ;
 int ZFS_PROP_ORIGIN ;
 scalar_t__ ZIO_CRYPT_OFF ;
 char* dgettext (int ,char*) ;
 int encryption_feature_is_enabled (int ) ;
 int free (int *) ;
 int lzc_change_key (int ,int ,int *,int *,int ) ;
 TYPE_1__* make_dataset_handle (int ,char*) ;
 int nvlist_add_string (int *,int ,char*) ;
 int nvlist_add_uint64 (int *,int ,scalar_t__) ;
 int nvlist_free (int *) ;
 int nvlist_lookup_string (int *,int ,char**) ;
 int nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int populate_create_encryption_params_nvlists (int ,TYPE_1__*,int ,scalar_t__,char*,int *,int **,int *) ;
 int snprintf (char*,int,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int zfs_close (TYPE_1__*) ;
 int zfs_crypto_get_encryption_root (TYPE_1__*,scalar_t__*,int *) ;
 int zfs_crypto_verify_rewrap_nvlist (TYPE_1__*,int *,int **,char*) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,char*,...) ;
 int zfs_get_name (TYPE_1__*) ;
 int zfs_parent_name (TYPE_1__*,char*,int) ;
 int zfs_prop_get (TYPE_1__*,int ,char*,int,int *,int *,int ,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_prop_to_name (int ) ;

int
zfs_crypto_rewrap(zfs_handle_t *zhp, nvlist_t *raw_props, boolean_t inheritkey)
{
 int ret;
 char errbuf[1024];
 boolean_t is_encroot;
 nvlist_t *props = ((void*)0);
 uint8_t *wkeydata = ((void*)0);
 uint_t wkeylen = 0;
 dcp_cmd_t cmd = (inheritkey) ? DCP_CMD_INHERIT : DCP_CMD_NEW_KEY;
 uint64_t crypt, pcrypt, keystatus, pkeystatus;
 uint64_t keyformat = ZFS_KEYFORMAT_NONE;
 zfs_handle_t *pzhp = ((void*)0);
 char *keylocation = ((void*)0);
 char origin_name[MAXNAMELEN];
 char prop_keylocation[MAXNAMELEN];
 char parent_name[ZFS_MAX_DATASET_NAME_LEN];

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "Key change error"));


 if (!encryption_feature_is_enabled(zhp->zpool_hdl)) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Encryption feature not enabled."));
  ret = 129;
  goto error;
 }


 crypt = zfs_prop_get_int(zhp, ZFS_PROP_ENCRYPTION);
 if (crypt == ZIO_CRYPT_OFF) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Dataset not encrypted."));
  ret = 129;
  goto error;
 }


 ret = zfs_crypto_get_encryption_root(zhp, &is_encroot, ((void*)0));
 if (ret != 0) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Failed to get encryption root for '%s'."),
      zfs_get_name(zhp));
  goto error;
 }


 ret = zfs_prop_get(zhp, ZFS_PROP_ORIGIN, origin_name,
     sizeof (origin_name), ((void*)0), ((void*)0), 0, B_TRUE);
 if (ret == 0 && strcmp(origin_name, "") != 0) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Keys cannot be changed on clones."));
  ret = 129;
  goto error;
 }





 if (!inheritkey) {

  ret = zfs_crypto_verify_rewrap_nvlist(zhp, raw_props, &props,
      errbuf);
  if (ret != 0)
   goto error;





  (void) nvlist_lookup_uint64(props,
      zfs_prop_to_name(ZFS_PROP_KEYFORMAT), &keyformat);
  (void) nvlist_lookup_string(props,
      zfs_prop_to_name(ZFS_PROP_KEYLOCATION), &keylocation);

  if (is_encroot) {




   if (keyformat == ZFS_KEYFORMAT_NONE) {
    keyformat = zfs_prop_get_int(zhp,
        ZFS_PROP_KEYFORMAT);
    ret = nvlist_add_uint64(props,
        zfs_prop_to_name(ZFS_PROP_KEYFORMAT),
        keyformat);
    if (ret != 0) {
     zfs_error_aux(zhp->zfs_hdl,
         dgettext(TEXT_DOMAIN, "Failed to "
         "get existing keyformat "
         "property."));
     goto error;
    }
   }

   if (keylocation == ((void*)0)) {
    ret = zfs_prop_get(zhp, ZFS_PROP_KEYLOCATION,
        prop_keylocation, sizeof (prop_keylocation),
        ((void*)0), ((void*)0), 0, B_TRUE);
    if (ret != 0) {
     zfs_error_aux(zhp->zfs_hdl,
         dgettext(TEXT_DOMAIN, "Failed to "
         "get existing keylocation "
         "property."));
     goto error;
    }

    keylocation = prop_keylocation;
   }
  } else {

   if (keyformat == ZFS_KEYFORMAT_NONE) {
    ret = 129;
    zfs_error_aux(zhp->zfs_hdl,
        dgettext(TEXT_DOMAIN, "Keyformat required "
        "for new encryption root."));
    goto error;
   }


   if (keylocation == ((void*)0)) {
    keylocation = "prompt";
    ret = nvlist_add_string(props,
        zfs_prop_to_name(ZFS_PROP_KEYLOCATION),
        keylocation);
    if (ret != 0)
     goto error;
   }
  }


  ret = populate_create_encryption_params_nvlists(zhp->zfs_hdl,
      zhp, B_TRUE, keyformat, keylocation, props, &wkeydata,
      &wkeylen);
  if (ret != 0)
   goto error;
 } else {

  if (!is_encroot) {
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Key inheritting can only be performed on "
       "encryption roots."));
   ret = 129;
   goto error;
  }


  ret = zfs_parent_name(zhp, parent_name, sizeof (parent_name));
  if (ret != 0) {
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Root dataset cannot inherit key."));
   ret = 129;
   goto error;
  }


  pzhp = make_dataset_handle(zhp->zfs_hdl, parent_name);
  if (pzhp == ((void*)0)) {
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Failed to lookup parent."));
   ret = ENOENT;
   goto error;
  }


  pcrypt = zfs_prop_get_int(pzhp, ZFS_PROP_ENCRYPTION);
  if (pcrypt == ZIO_CRYPT_OFF) {
   zfs_error_aux(pzhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Parent must be encrypted."));
   ret = 129;
   goto error;
  }


  pkeystatus = zfs_prop_get_int(pzhp, ZFS_PROP_KEYSTATUS);
  if (pkeystatus == ZFS_KEYSTATUS_UNAVAILABLE) {
   zfs_error_aux(pzhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Parent key must be loaded."));
   ret = 130;
   goto error;
  }
 }


 keystatus = zfs_prop_get_int(zhp, ZFS_PROP_KEYSTATUS);
 if (keystatus == ZFS_KEYSTATUS_UNAVAILABLE) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Key must be loaded."));
  ret = 130;
  goto error;
 }


 ret = lzc_change_key(zhp->zfs_name, cmd, props, wkeydata, wkeylen);
 if (ret != 0) {
  switch (ret) {
  case 128:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Permission denied."));
   break;
  case 129:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Invalid properties for key change."));
   break;
  case 130:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Key is not currently loaded."));
   break;
  }
  zfs_error(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
 }

 if (pzhp != ((void*)0))
  zfs_close(pzhp);
 if (props != ((void*)0))
  nvlist_free(props);
 if (wkeydata != ((void*)0))
  free(wkeydata);

 return (ret);

error:
 if (pzhp != ((void*)0))
  zfs_close(pzhp);
 if (props != ((void*)0))
  nvlist_free(props);
 if (wkeydata != ((void*)0))
  free(wkeydata);

 zfs_error(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
 return (ret);
}
