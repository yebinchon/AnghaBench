
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_12__ {char* member_0; int zc_cookie; int zc_guid; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;
 int EZFS_BADDEV ;
 int EZFS_BADTARGET ;
 int EZFS_DEVOVERFLOW ;
 int EZFS_INVALCONFIG ;
 int EZFS_ISL2CACHE ;
 int EZFS_ISSPARE ;
 int EZFS_NODEVICE ;
 int SPA_VERSION_MULTI_REPLACE ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_VDEV_ATTACH ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_IS_SPARE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_PROP_VERSION ;
 char* dgettext (int ,char*) ;
 int errno ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 scalar_t__ is_replacing_spare (int *,int *,int) ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int *) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 int stderr ;
 int strlcpy (int ,int ,int) ;
 int verify (int) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 scalar_t__ zcmd_write_conf_nvlist (int *,TYPE_2__*,int *) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zfs_ioctl (int *,int ,TYPE_2__*) ;
 int * zpool_find_vdev (TYPE_1__*,char const*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int zpool_get_config (TYPE_1__*,int *) ;
 int zpool_get_prop_int (TYPE_1__*,int ,int *) ;
 scalar_t__ zpool_is_bootable (TYPE_1__*) ;
 int zpool_standard_error (int *,int,char*) ;
 char* zpool_vdev_name (int *,int *,int *,int ) ;

int
zpool_vdev_attach(zpool_handle_t *zhp,
    const char *old_disk, const char *new_disk, nvlist_t *nvroot, int replacing)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];
 int ret;
 nvlist_t *tgt;
 boolean_t avail_spare, l2cache, islog;
 uint64_t val;
 char *newname;
 nvlist_t **child;
 uint_t children;
 nvlist_t *config_root;
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 boolean_t rootpool = zpool_is_bootable(zhp);

 if (replacing)
  (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
      "cannot replace %s with %s"), old_disk, new_disk);
 else
  (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
      "cannot attach %s to %s"), new_disk, old_disk);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 if ((tgt = zpool_find_vdev(zhp, old_disk, &avail_spare, &l2cache,
     &islog)) == ((void*)0))
  return (zfs_error(hdl, EZFS_NODEVICE, msg));

 if (avail_spare)
  return (zfs_error(hdl, EZFS_ISSPARE, msg));

 if (l2cache)
  return (zfs_error(hdl, EZFS_ISL2CACHE, msg));

 verify(nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_GUID, &zc.zc_guid) == 0);
 zc.zc_cookie = replacing;

 if (nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     &child, &children) != 0 || children != 1) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "new device must be a single disk"));
  return (zfs_error(hdl, EZFS_INVALCONFIG, msg));
 }

 verify(nvlist_lookup_nvlist(zpool_get_config(zhp, ((void*)0)),
     ZPOOL_CONFIG_VDEV_TREE, &config_root) == 0);

 if ((newname = zpool_vdev_name(((void*)0), ((void*)0), child[0], 0)) == ((void*)0))
  return (-1);





 if (replacing &&
     nvlist_lookup_uint64(tgt, ZPOOL_CONFIG_IS_SPARE, &val) == 0 &&
     (zpool_find_vdev(zhp, newname, &avail_spare, &l2cache,
     ((void*)0)) == ((void*)0) || !avail_spare) &&
     is_replacing_spare(config_root, tgt, 1)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "can only be replaced by another hot spare"));
  free(newname);
  return (zfs_error(hdl, EZFS_BADTARGET, msg));
 }

 free(newname);

 if (zcmd_write_conf_nvlist(hdl, &zc, nvroot) != 0)
  return (-1);

 ret = zfs_ioctl(hdl, ZFS_IOC_VDEV_ATTACH, &zc);

 zcmd_free_nvlists(&zc);

 if (ret == 0) {
  if (rootpool) {




   (void) fprintf(stderr, dgettext(TEXT_DOMAIN, "Make "
       "sure to wait until resilver is done "
       "before rebooting.\n"));
  }
  return (0);
 }

 switch (errno) {
 case 129:



  if (replacing) {
   uint64_t version = zpool_get_prop_int(zhp,
       ZPOOL_PROP_VERSION, ((void*)0));

   if (islog)
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "cannot replace a log with a spare"));
   else if (version >= SPA_VERSION_MULTI_REPLACE)
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "already in replacing/spare config; wait "
        "for completion or use 'zpool detach'"));
   else
    zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
        "cannot replace a replacing device"));
  } else {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "can only attach to mirrors and top-level "
       "disks"));
  }
  (void) zfs_error(hdl, EZFS_BADTARGET, msg);
  break;

 case 131:



  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "new device must be a single disk"));
  (void) zfs_error(hdl, EZFS_INVALCONFIG, msg);
  break;

 case 133:
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "%s is busy, "
      "or device removal is in progress"),
      new_disk);
  (void) zfs_error(hdl, EZFS_BADDEV, msg);
  break;

 case 128:



  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "device is too small"));
  (void) zfs_error(hdl, EZFS_BADDEV, msg);
  break;

 case 132:



  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "new device has a different optimal sector size; use the "
      "option '-o ashift=N' to override the optimal size"));
  (void) zfs_error(hdl, EZFS_BADDEV, msg);
  break;

 case 130:



  (void) zfs_error(hdl, EZFS_DEVOVERFLOW, msg);
  break;

 default:
  (void) zpool_standard_error(hdl, errno, msg);
 }

 return (-1);
}
