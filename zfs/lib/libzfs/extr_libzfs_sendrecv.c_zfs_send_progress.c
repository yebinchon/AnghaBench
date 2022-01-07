
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int zfs_hdl; int zfs_name; } ;
typedef TYPE_2__ zfs_handle_t ;
struct TYPE_6__ {int member_0; } ;
struct TYPE_8__ {int zc_cookie; int zc_objset_type; int zc_name; TYPE_1__ member_0; } ;
typedef TYPE_3__ zfs_cmd_t ;
typedef int uint64_t ;


 int ZFS_IOC_SEND_PROGRESS ;
 int errno ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ zfs_ioctl (int ,int ,TYPE_3__*) ;

int
zfs_send_progress(zfs_handle_t *zhp, int fd, uint64_t *bytes_written,
    uint64_t *blocks_visited)
{
 zfs_cmd_t zc = { {0} };
 (void) strlcpy(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));
 zc.zc_cookie = fd;
 if (zfs_ioctl(zhp->zfs_hdl, ZFS_IOC_SEND_PROGRESS, &zc) != 0)
  return (errno);
 if (bytes_written != ((void*)0))
  *bytes_written = zc.zc_cookie;
 if (blocks_visited != ((void*)0))
  *blocks_visited = zc.zc_objset_type;
 return (0);
}
