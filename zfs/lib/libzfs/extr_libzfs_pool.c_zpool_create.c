
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {char* member_0; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint_t ;
typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_9__ {int import; int create; } ;
typedef TYPE_2__ prop_flags_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef int buf ;


 int B_FALSE ;
 int B_TRUE ;





 int EZFS_BADDEV ;
 int EZFS_BADPROP ;
 int EZFS_CRYPTOFAILED ;
 int EZFS_INVALIDNAME ;
 int NV_UNIQUE_NAME ;
 int SPA_MINDEVSIZE ;
 int SPA_VERSION_1 ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_POOL_CREATE ;
 int ZFS_PROP_SPECIAL_SMALL_BLOCKS ;
 int ZFS_PROP_ZONED ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZPOOL_HIDDEN_ARGS ;
 int ZPOOL_ROOTFS_PROPS ;
 char* dgettext (int ,char*) ;
 int errno ;
 int free (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_uint8_array (int *,char*,int *,int ) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_exists (int *,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (int ,char const*,int) ;
 int zcmd_free_nvlists (TYPE_1__*) ;
 scalar_t__ zcmd_write_conf_nvlist (int *,TYPE_1__*,int *) ;
 scalar_t__ zcmd_write_src_nvlist (int *,TYPE_1__*,int *) ;
 scalar_t__ zfs_crypto_create (int *,int *,int *,int *,int ,int **,int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_ioctl (int *,int ,TYPE_1__*) ;
 int zfs_nicebytes (int ,char*,int) ;
 int zfs_prop_to_name (int ) ;
 int * zfs_valid_proplist (int *,int ,int *,int,int *,int *,int ,char*) ;
 int zpool_has_special_vdev (int *) ;
 int zpool_name_valid (int *,int ,char const*) ;
 int zpool_standard_error (int *,int,char*) ;
 int * zpool_valid_proplist (int *,char const*,int *,int ,TYPE_2__,char*) ;

int
zpool_create(libzfs_handle_t *hdl, const char *pool, nvlist_t *nvroot,
    nvlist_t *props, nvlist_t *fsprops)
{
 zfs_cmd_t zc = {"\0"};
 nvlist_t *zc_fsprops = ((void*)0);
 nvlist_t *zc_props = ((void*)0);
 nvlist_t *hidden_args = ((void*)0);
 uint8_t *wkeydata = ((void*)0);
 uint_t wkeylen = 0;
 char msg[1024];
 int ret = -1;

 (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
     "cannot create '%s'"), pool);

 if (!zpool_name_valid(hdl, B_FALSE, pool))
  return (zfs_error(hdl, EZFS_INVALIDNAME, msg));

 if (zcmd_write_conf_nvlist(hdl, &zc, nvroot) != 0)
  return (-1);

 if (props) {
  prop_flags_t flags = { .create = B_TRUE, .import = B_FALSE };

  if ((zc_props = zpool_valid_proplist(hdl, pool, props,
      SPA_VERSION_1, flags, msg)) == ((void*)0)) {
   goto create_failed;
  }
 }

 if (fsprops) {
  uint64_t zoned;
  char *zonestr;

  zoned = ((nvlist_lookup_string(fsprops,
      zfs_prop_to_name(ZFS_PROP_ZONED), &zonestr) == 0) &&
      strcmp(zonestr, "on") == 0);

  if ((zc_fsprops = zfs_valid_proplist(hdl, ZFS_TYPE_FILESYSTEM,
      fsprops, zoned, ((void*)0), ((void*)0), B_TRUE, msg)) == ((void*)0)) {
   goto create_failed;
  }

  if (nvlist_exists(zc_fsprops,
      zfs_prop_to_name(ZFS_PROP_SPECIAL_SMALL_BLOCKS)) &&
      !zpool_has_special_vdev(nvroot)) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "%s property requires a special vdev"),
       zfs_prop_to_name(ZFS_PROP_SPECIAL_SMALL_BLOCKS));
   (void) zfs_error(hdl, EZFS_BADPROP, msg);
   goto create_failed;
  }

  if (!zc_props &&
      (nvlist_alloc(&zc_props, NV_UNIQUE_NAME, 0) != 0)) {
   goto create_failed;
  }
  if (zfs_crypto_create(hdl, ((void*)0), zc_fsprops, props, B_TRUE,
      &wkeydata, &wkeylen) != 0) {
   zfs_error(hdl, EZFS_CRYPTOFAILED, msg);
   goto create_failed;
  }
  if (nvlist_add_nvlist(zc_props,
      ZPOOL_ROOTFS_PROPS, zc_fsprops) != 0) {
   goto create_failed;
  }
  if (wkeydata != ((void*)0)) {
   if (nvlist_alloc(&hidden_args, NV_UNIQUE_NAME, 0) != 0)
    goto create_failed;

   if (nvlist_add_uint8_array(hidden_args, "wkeydata",
       wkeydata, wkeylen) != 0)
    goto create_failed;

   if (nvlist_add_nvlist(zc_props, ZPOOL_HIDDEN_ARGS,
       hidden_args) != 0)
    goto create_failed;
  }
 }

 if (zc_props && zcmd_write_src_nvlist(hdl, &zc, zc_props) != 0)
  goto create_failed;

 (void) strlcpy(zc.zc_name, pool, sizeof (zc.zc_name));

 if ((ret = zfs_ioctl(hdl, ZFS_IOC_POOL_CREATE, &zc)) != 0) {

  zcmd_free_nvlists(&zc);
  nvlist_free(zc_props);
  nvlist_free(zc_fsprops);
  nvlist_free(hidden_args);
  if (wkeydata != ((void*)0))
   free(wkeydata);

  switch (errno) {
  case 132:







   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "one or more vdevs refer to the same device, or "
       "one of\nthe devices is part of an active md or "
       "lvm device"));
   return (zfs_error(hdl, EZFS_BADDEV, msg));

  case 128:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "record size invalid"));
   return (zfs_error(hdl, EZFS_BADPROP, msg));

  case 129:






   {
    char buf[64];

    zfs_nicebytes(SPA_MINDEVSIZE, buf,
        sizeof (buf));

    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "one or more devices is less than the "
        "minimum size (%s)"), buf);
   }
   return (zfs_error(hdl, EZFS_BADDEV, msg));

  case 131:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "one or more devices is out of space"));
   return (zfs_error(hdl, EZFS_BADDEV, msg));

  case 130:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "cache device must be a disk or disk slice"));
   return (zfs_error(hdl, EZFS_BADDEV, msg));

  default:
   return (zpool_standard_error(hdl, errno, msg));
  }
 }

create_failed:
 zcmd_free_nvlists(&zc);
 nvlist_free(zc_props);
 nvlist_free(zc_fsprops);
 nvlist_free(hidden_args);
 if (wkeydata != ((void*)0))
  free(wkeydata);
 return (ret);
}
