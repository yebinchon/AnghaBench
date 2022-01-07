
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zfs_hdl; int zfs_name; int zpool_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint64_t ;
typedef int errbuf ;
typedef int boolean_t ;




 int EINVAL ;

 int EZFS_CRYPTOFAILED ;
 int MAXNAMELEN ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_KEYFORMAT_NONE ;
 scalar_t__ ZFS_KEYSTATUS_UNAVAILABLE ;
 int ZFS_PROP_KEYFORMAT ;
 int ZFS_PROP_KEYSTATUS ;
 char* dgettext (int ,char*) ;
 int encryption_feature_is_enabled (int ) ;
 int lzc_unload_key (int ) ;
 int snprintf (char*,int,char*) ;
 int zfs_crypto_get_encryption_root (TYPE_1__*,int *,char*) ;
 int zfs_error (int ,int ,char*) ;
 int zfs_error_aux (int ,char*,...) ;
 int zfs_get_name (TYPE_1__*) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;

int
zfs_crypto_unload_key(zfs_handle_t *zhp)
{
 int ret;
 char errbuf[1024];
 char prop_encroot[MAXNAMELEN];
 uint64_t keystatus, keyformat;
 boolean_t is_encroot;

 (void) snprintf(errbuf, sizeof (errbuf),
     dgettext(TEXT_DOMAIN, "Key unload error"));


 if (!encryption_feature_is_enabled(zhp->zpool_hdl)) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Encryption feature not enabled."));
  ret = EINVAL;
  goto error;
 }


 keyformat = zfs_prop_get_int(zhp, ZFS_PROP_KEYFORMAT);
 if (keyformat == ZFS_KEYFORMAT_NONE) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "'%s' is not encrypted."), zfs_get_name(zhp));
  ret = EINVAL;
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
      "Keys must be unloaded for encryption root of '%s' (%s)."),
      zfs_get_name(zhp), prop_encroot);
  ret = EINVAL;
  goto error;
 }


 keystatus = zfs_prop_get_int(zhp, ZFS_PROP_KEYSTATUS);
 if (keystatus == ZFS_KEYSTATUS_UNAVAILABLE) {
  zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
      "Key already unloaded for '%s'."), zfs_get_name(zhp));
  ret = 130;
  goto error;
 }


 ret = lzc_unload_key(zhp->zfs_name);

 if (ret != 0) {
  switch (ret) {
  case 128:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Permission denied."));
   break;
  case 130:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "Key already unloaded for '%s'."),
       zfs_get_name(zhp));
   break;
  case 129:
   zfs_error_aux(zhp->zfs_hdl, dgettext(TEXT_DOMAIN,
       "'%s' is busy."), zfs_get_name(zhp));
   break;
  }
  zfs_error(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
 }

 return (ret);

error:
 zfs_error(zhp->zfs_hdl, EZFS_CRYPTOFAILED, errbuf);
 return (ret);
}
