
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zfs_type_t ;
typedef int zfs_handle_t ;
struct TYPE_2__ {char* proto; int handle; } ;
typedef TYPE_1__ update_cookie_t ;
typedef int shareopts ;
typedef int mountpoint ;


 int B_FALSE ;
 int ZFS_MAXPROPLEN ;
 int ZFS_PROP_MOUNTPOINT ;
 int ZFS_PROP_SHARENFS ;
 int ZFS_PROP_SHARESMB ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 int process_share (int ,int *,char*,int *,char*,char*,int *,char*,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_get_name (int *) ;
 scalar_t__ zfs_get_type (int *) ;
 int zfs_is_mounted (int *,int *) ;
 scalar_t__ zfs_iter_filesystems (int *,int (*) (int *,void*),void*) ;
 scalar_t__ zfs_prop_get (int *,int ,char*,int,int *,int *,int ,int ) ;

__attribute__((used)) static int
update_zfs_shares_cb(zfs_handle_t *zhp, void *pcookie)
{
 update_cookie_t *udata = (update_cookie_t *)pcookie;
 char mountpoint[ZFS_MAXPROPLEN];
 char shareopts[ZFS_MAXPROPLEN];
 char *dataset;
 zfs_type_t type = zfs_get_type(zhp);

 if (type == ZFS_TYPE_FILESYSTEM &&
     zfs_iter_filesystems(zhp, update_zfs_shares_cb, pcookie) != 0) {
  zfs_close(zhp);
  return (1);
 }

 if (type != ZFS_TYPE_FILESYSTEM) {
  zfs_close(zhp);
  return (0);
 }

 if (zfs_prop_get(zhp, ZFS_PROP_MOUNTPOINT, mountpoint,
     sizeof (mountpoint), ((void*)0), ((void*)0), 0, B_FALSE) != 0) {
  zfs_close(zhp);
  return (0);
 }

 dataset = (char *)zfs_get_name(zhp);

 if (dataset == ((void*)0)) {
  zfs_close(zhp);
  return (0);
 }

 if (!zfs_is_mounted(zhp, ((void*)0))) {
  zfs_close(zhp);
  return (0);
 }

 if ((udata->proto == ((void*)0) || strcmp(udata->proto, "nfs") == 0) &&
     zfs_prop_get(zhp, ZFS_PROP_SHARENFS, shareopts,
     sizeof (shareopts), ((void*)0), ((void*)0), 0, B_FALSE) == 0 &&
     strcmp(shareopts, "off") != 0) {
  (void) process_share(udata->handle, ((void*)0), mountpoint, ((void*)0),
      "nfs", shareopts, ((void*)0), dataset, B_FALSE);
 }

 if ((udata->proto == ((void*)0) || strcmp(udata->proto, "smb") == 0) &&
     zfs_prop_get(zhp, ZFS_PROP_SHARESMB, shareopts,
     sizeof (shareopts), ((void*)0), ((void*)0), 0, B_FALSE) == 0 &&
     strcmp(shareopts, "off") != 0) {
  (void) process_share(udata->handle, ((void*)0), mountpoint, ((void*)0),
      "smb", shareopts, ((void*)0), dataset, B_FALSE);
 }

 zfs_close(zhp);

 return (0);
}
