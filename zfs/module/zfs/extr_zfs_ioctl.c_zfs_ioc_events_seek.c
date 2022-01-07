
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfs_zevent_t ;
struct TYPE_3__ {int zc_cleanup_fd; int zc_guid; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int minor_t ;


 int zfs_zevent_fd_hold (int ,int *,int **) ;
 int zfs_zevent_fd_rele (int ) ;
 int zfs_zevent_seek (int *,int ) ;

__attribute__((used)) static int
zfs_ioc_events_seek(zfs_cmd_t *zc)
{
 zfs_zevent_t *ze;
 minor_t minor;
 int error;

 error = zfs_zevent_fd_hold(zc->zc_cleanup_fd, &minor, &ze);
 if (error != 0)
  return (error);

 error = zfs_zevent_seek(ze, zc->zc_guid);
 zfs_zevent_fd_rele(zc->zc_cleanup_fd);

 return (error);
}
