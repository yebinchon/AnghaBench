
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ zfs_share_proto_t ;
struct TYPE_5__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct mnttab {char const* mnt_mountp; } ;
typedef int libzfs_handle_t ;


 scalar_t__ PROTO_END ;
 scalar_t__ ZFS_TYPE_FILESYSTEM ;
 int free (char*) ;
 scalar_t__ is_shared_impl (int *,char*,scalar_t__) ;
 scalar_t__ libzfs_mnttab_find (int *,int ,struct mnttab*) ;
 scalar_t__ unshare_one (int *,int ,char*,scalar_t__) ;
 int zfs_get_name (TYPE_1__*) ;
 scalar_t__ zfs_get_type (TYPE_1__*) ;
 char* zfs_strdup (int *,char const*) ;

int
zfs_unshare_proto(zfs_handle_t *zhp, const char *mountpoint,
    zfs_share_proto_t *proto)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 struct mnttab entry;
 char *mntpt = ((void*)0);


 if (mountpoint != ((void*)0))
  mntpt = zfs_strdup(hdl, mountpoint);

 if (mountpoint != ((void*)0) || ((zfs_get_type(zhp) == ZFS_TYPE_FILESYSTEM) &&
     libzfs_mnttab_find(hdl, zfs_get_name(zhp), &entry) == 0)) {
  zfs_share_proto_t *curr_proto;

  if (mountpoint == ((void*)0))
   mntpt = zfs_strdup(zhp->zfs_hdl, entry.mnt_mountp);

  for (curr_proto = proto; *curr_proto != PROTO_END;
      curr_proto++) {

   if (is_shared_impl(hdl, mntpt, *curr_proto) &&
       unshare_one(hdl, zhp->zfs_name,
       mntpt, *curr_proto) != 0) {
    if (mntpt != ((void*)0))
     free(mntpt);
    return (-1);
   }
  }
 }
 if (mntpt != ((void*)0))
  free(mntpt);

 return (0);
}
