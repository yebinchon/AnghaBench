
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * zfs_recvd_props; int * zfs_hdl; int zfs_name; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_10__ {char* member_0; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;


 scalar_t__ ENOMEM ;
 int ZFS_IOC_OBJSET_RECVD_PROPS ;
 scalar_t__ errno ;
 int nvlist_free (int *) ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ zcmd_alloc_dst_nvlist (int *,TYPE_2__*,int ) ;
 scalar_t__ zcmd_expand_dst_nvlist (int *,TYPE_2__*) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 int zcmd_read_dst_nvlist (int *,TYPE_2__*,int **) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;

__attribute__((used)) static int
get_recvd_props_ioctl(zfs_handle_t *zhp)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 nvlist_t *recvdprops;
 zfs_cmd_t zc = {"\0"};
 int err;

 if (zcmd_alloc_dst_nvlist(hdl, &zc, 0) != 0)
  return (-1);

 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

 while (zfs_ioctl(hdl, ZFS_IOC_OBJSET_RECVD_PROPS, &zc) != 0) {
  if (errno == ENOMEM) {
   if (zcmd_expand_dst_nvlist(hdl, &zc) != 0) {
    return (-1);
   }
  } else {
   zcmd_free_nvlists(&zc);
   return (-1);
  }
 }

 err = zcmd_read_dst_nvlist(zhp->zfs_hdl, &zc, &recvdprops);
 zcmd_free_nvlists(&zc);
 if (err != 0)
  return (-1);

 nvlist_free(zhp->zfs_recvd_props);
 zhp->zfs_recvd_props = recvdprops;

 return (0);
}
