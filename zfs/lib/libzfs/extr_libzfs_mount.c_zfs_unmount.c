
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct mnttab {char const* mnt_mountp; } ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MS_CRYPT ;
 scalar_t__ ZFS_KEYSTATUS_AVAILABLE ;
 int ZFS_PROP_ENCRYPTION ;
 int ZFS_PROP_KEYSTATUS ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 scalar_t__ ZIO_CRYPT_OFF ;
 int free (char*) ;
 scalar_t__ libzfs_mnttab_find (int *,int ,struct mnttab*) ;
 int libzfs_mnttab_remove (int *,int ) ;
 int share_all_proto ;
 scalar_t__ unmount_one (int *,char*,int) ;
 scalar_t__ zfs_crypto_get_encryption_root (TYPE_1__*,scalar_t__*,int *) ;
 scalar_t__ zfs_crypto_unload_key (TYPE_1__*) ;
 scalar_t__ zfs_get_type (TYPE_1__*) ;
 int zfs_mount (TYPE_1__*,int *,int ) ;
 scalar_t__ zfs_prop_get_int (TYPE_1__*,int ) ;
 int zfs_refresh_properties (TYPE_1__*) ;
 int zfs_shareall (TYPE_1__*) ;
 char* zfs_strdup (int *,char const*) ;
 scalar_t__ zfs_unshare_proto (TYPE_1__*,char*,int ) ;

int
zfs_unmount(zfs_handle_t *zhp, const char *mountpoint, int flags)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 struct mnttab entry;
 char *mntpt = ((void*)0);
 boolean_t encroot, unmounted = B_FALSE;


 if (mountpoint != ((void*)0) || ((zfs_get_type(zhp) == ZFS_TYPE_FILESYSTEM) &&
     libzfs_mnttab_find(hdl, zhp->zfs_name, &entry) == 0)) {






  if (mountpoint == ((void*)0))
   mntpt = zfs_strdup(hdl, entry.mnt_mountp);
  else
   mntpt = zfs_strdup(hdl, mountpoint);




  if (zfs_unshare_proto(zhp, mntpt, share_all_proto) != 0) {
   free(mntpt);
   return (-1);
  }

  if (unmount_one(hdl, mntpt, flags) != 0) {
   free(mntpt);
   (void) zfs_shareall(zhp);
   return (-1);
  }

  libzfs_mnttab_remove(hdl, zhp->zfs_name);
  free(mntpt);
  unmounted = B_TRUE;
 }






 if ((flags & MS_CRYPT) != 0 &&
     zfs_prop_get_int(zhp, ZFS_PROP_ENCRYPTION) != ZIO_CRYPT_OFF) {
  zfs_refresh_properties(zhp);

  if (zfs_crypto_get_encryption_root(zhp, &encroot, ((void*)0)) != 0 &&
      unmounted) {
   (void) zfs_mount(zhp, ((void*)0), 0);
   return (-1);
  }

  if (encroot && zfs_prop_get_int(zhp, ZFS_PROP_KEYSTATUS) ==
      ZFS_KEYSTATUS_AVAILABLE &&
      zfs_crypto_unload_key(zhp) != 0) {
   (void) zfs_mount(zhp, ((void*)0), 0);
   return (-1);
  }
 }

 return (0);
}
