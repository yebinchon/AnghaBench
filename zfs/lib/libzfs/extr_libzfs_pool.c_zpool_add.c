
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_9__ {char* member_0; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef int buf ;







 int EZFS_BADDEV ;
 int EZFS_BADVERSION ;
 int SPA_MINDEVSIZE ;
 scalar_t__ SPA_VERSION_L2CACHE ;
 scalar_t__ SPA_VERSION_SPARES ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_VDEV_ADD ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_PROP_VERSION ;
 char* dgettext (int ,char*) ;
 int errno ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int *) ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 scalar_t__ zcmd_write_conf_nvlist (int *,TYPE_2__*,int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zfs_nicebytes (int ,char*,int) ;
 scalar_t__ zpool_get_prop_int (TYPE_1__*,int ,int *) ;
 int zpool_standard_error (int *,int,char*) ;

int
zpool_add(zpool_handle_t *zhp, nvlist_t *nvroot)
{
 zfs_cmd_t zc = {"\0"};
 int ret;
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 char msg[1024];
 nvlist_t **spares, **l2cache;
 uint_t nspares, nl2cache;

 (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
     "cannot add to '%s'"), zhp->zpool_name);

 if (zpool_get_prop_int(zhp, ZPOOL_PROP_VERSION, ((void*)0)) <
     SPA_VERSION_SPARES &&
     nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_SPARES,
     &spares, &nspares) == 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "pool must be "
      "upgraded to add hot spares"));
  return (zfs_error(hdl, EZFS_BADVERSION, msg));
 }

 if (zpool_get_prop_int(zhp, ZPOOL_PROP_VERSION, ((void*)0)) <
     SPA_VERSION_L2CACHE &&
     nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_L2CACHE,
     &l2cache, &nl2cache) == 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "pool must be "
      "upgraded to add cache devices"));
  return (zfs_error(hdl, EZFS_BADVERSION, msg));
 }

 if (zcmd_write_conf_nvlist(hdl, &zc, nvroot) != 0)
  return (-1);
 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));

 if (zfs_ioctl(hdl, ZFS_IOC_VDEV_ADD, &zc) != 0) {
  switch (errno) {
  case 132:






   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "one or more vdevs refer to the same device"));
   (void) zfs_error(hdl, EZFS_BADDEV, msg);
   break;

  case 131:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "invalid config; a pool with removing/removed "
       "vdevs does not support adding raidz vdevs"));
   (void) zfs_error(hdl, EZFS_BADDEV, msg);
   break;

  case 128:






   {
    char buf[64];

    zfs_nicebytes(SPA_MINDEVSIZE, buf,
        sizeof (buf));

    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "device is less than the minimum "
        "size (%s)"), buf);
   }
   (void) zfs_error(hdl, EZFS_BADDEV, msg);
   break;

  case 129:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "pool must be upgraded to add these vdevs"));
   (void) zfs_error(hdl, EZFS_BADVERSION, msg);
   break;

  case 130:
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "cache device must be a disk or disk slice"));
   (void) zfs_error(hdl, EZFS_BADDEV, msg);
   break;

  default:
   (void) zpool_standard_error(hdl, errno, msg);
  }

  ret = -1;
 } else {
  ret = 0;
 }

 zcmd_free_nvlists(&zc);

 return (ret);
}
