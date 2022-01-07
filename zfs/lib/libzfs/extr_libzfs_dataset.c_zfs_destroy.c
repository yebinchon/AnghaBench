
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zfs_type; int zfs_name; int zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef int nvlist_t ;
typedef scalar_t__ boolean_t ;


 int EINVAL ;
 int ENOENT ;
 int TEXT_DOMAIN ;
 scalar_t__ ZFS_TYPE_BOOKMARK ;
 scalar_t__ ZFS_TYPE_SNAPSHOT ;
 int dgettext (int ,char*) ;
 int errno ;
 int fnvlist_add_boolean (int *,int ) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_destroy (int ) ;
 int lzc_destroy_bookmarks (int *,int *) ;
 int lzc_destroy_snaps (int *,scalar_t__,int *) ;
 int remove_mountpoint (TYPE_1__*) ;
 int zfs_standard_error_fmt (int ,int,int ,int ) ;

int
zfs_destroy(zfs_handle_t *zhp, boolean_t defer)
{
 int error;

 if (zhp->zfs_type != ZFS_TYPE_SNAPSHOT && defer)
  return (EINVAL);

 if (zhp->zfs_type == ZFS_TYPE_BOOKMARK) {
  nvlist_t *nv = fnvlist_alloc();
  fnvlist_add_boolean(nv, zhp->zfs_name);
  error = lzc_destroy_bookmarks(nv, ((void*)0));
  fnvlist_free(nv);
  if (error != 0) {
   return (zfs_standard_error_fmt(zhp->zfs_hdl, error,
       dgettext(TEXT_DOMAIN, "cannot destroy '%s'"),
       zhp->zfs_name));
  }
  return (0);
 }

 if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT) {
  nvlist_t *nv = fnvlist_alloc();
  fnvlist_add_boolean(nv, zhp->zfs_name);
  error = lzc_destroy_snaps(nv, defer, ((void*)0));
  fnvlist_free(nv);
 } else {
  error = lzc_destroy(zhp->zfs_name);
 }

 if (error != 0 && error != ENOENT) {
  return (zfs_standard_error_fmt(zhp->zfs_hdl, errno,
      dgettext(TEXT_DOMAIN, "cannot destroy '%s'"),
      zhp->zfs_name));
 }

 remove_mountpoint(zhp);

 return (0);
}
