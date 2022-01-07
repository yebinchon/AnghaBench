
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_8__ {int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int libzfs_handle_t ;


 scalar_t__ ENOMEM ;
 int ZFS_IOC_OBJSET_STATS ;
 scalar_t__ errno ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ zcmd_expand_dst_nvlist (int *,TYPE_2__*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;

__attribute__((used)) static int
get_stats_ioctl(zfs_handle_t *zhp, zfs_cmd_t *zc)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;

 (void) strlcpy(zc->zc_name, zhp->zfs_name, sizeof (zc->zc_name));

 while (zfs_ioctl(hdl, ZFS_IOC_OBJSET_STATS, zc) != 0) {
  if (errno == ENOMEM) {
   if (zcmd_expand_dst_nvlist(hdl, zc) != 0) {
    return (-1);
   }
  } else {
   return (-1);
  }
 }
 return (0);
}
