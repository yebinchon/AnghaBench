
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zpool_props; int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_10__ {char* member_0; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int libzfs_handle_t ;


 scalar_t__ ENOMEM ;
 int ZFS_IOC_POOL_GET_PROPS ;
 scalar_t__ errno ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ zcmd_alloc_dst_nvlist (int *,TYPE_2__*,int ) ;
 scalar_t__ zcmd_expand_dst_nvlist (int *,TYPE_2__*) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 scalar_t__ zcmd_read_dst_nvlist (int *,TYPE_2__*,int *) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;

__attribute__((used)) static int
zpool_get_all_props(zpool_handle_t *zhp)
{
 zfs_cmd_t zc = {"\0"};
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));

 if (zcmd_alloc_dst_nvlist(hdl, &zc, 0) != 0)
  return (-1);

 while (zfs_ioctl(hdl, ZFS_IOC_POOL_GET_PROPS, &zc) != 0) {
  if (errno == ENOMEM) {
   if (zcmd_expand_dst_nvlist(hdl, &zc) != 0) {
    zcmd_free_nvlists(&zc);
    return (-1);
   }
  } else {
   zcmd_free_nvlists(&zc);
   return (-1);
  }
 }

 if (zcmd_read_dst_nvlist(hdl, &zc, &zhp->zpool_props) != 0) {
  zcmd_free_nvlists(&zc);
  return (-1);
 }

 zcmd_free_nvlists(&zc);

 return (0);
}
