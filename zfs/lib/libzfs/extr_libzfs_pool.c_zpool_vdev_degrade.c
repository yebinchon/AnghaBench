
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_6__ {char* member_0; int zc_obj; int zc_cookie; scalar_t__ zc_guid; int zc_name; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int vdev_aux_t ;
typedef scalar_t__ uint64_t ;
typedef int u_longlong_t ;
typedef int msg ;
typedef int libzfs_handle_t ;


 int TEXT_DOMAIN ;
 int VDEV_STATE_DEGRADED ;
 int ZFS_IOC_VDEV_SET_STATE ;
 char* dgettext (int ,char*) ;
 int errno ;
 int snprintf (char*,int,char*,int ) ;
 int strlcpy (int ,int ,int) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int zpool_standard_error (int *,int ,char*) ;

int
zpool_vdev_degrade(zpool_handle_t *zhp, uint64_t guid, vdev_aux_t aux)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];
 libzfs_handle_t *hdl = zhp->zpool_hdl;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "cannot degrade %llu"), (u_longlong_t)guid);

 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 zc.zc_guid = guid;
 zc.zc_cookie = VDEV_STATE_DEGRADED;
 zc.zc_obj = aux;

 if (zfs_ioctl(hdl, ZFS_IOC_VDEV_SET_STATE, &zc) == 0)
  return (0);

 return (zpool_standard_error(hdl, errno, msg));
}
