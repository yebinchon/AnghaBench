
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; int zc_cleanup_fd; int zc_guid; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int libzfs_handle_t ;




 int EZFS_NOENT ;
 int EZFS_NOMEM ;
 int TEXT_DOMAIN ;
 int ZFS_IOC_EVENTS_SEEK ;
 int dgettext (int ,char*) ;
 int errno ;
 int zfs_error_fmt (int *,int ,int ) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_1__*) ;
 int zpool_standard_error_fmt (int *,int,int ) ;

int
zpool_events_seek(libzfs_handle_t *hdl, uint64_t eid, int zevent_fd)
{
 zfs_cmd_t zc = {"\0"};
 int error = 0;

 zc.zc_guid = eid;
 zc.zc_cleanup_fd = zevent_fd;

 if (zfs_ioctl(hdl, ZFS_IOC_EVENTS_SEEK, &zc) != 0) {
  switch (errno) {
  case 129:
   error = zfs_error_fmt(hdl, EZFS_NOENT,
       dgettext(TEXT_DOMAIN, "cannot get event"));
   break;

  case 128:
   error = zfs_error_fmt(hdl, EZFS_NOMEM,
       dgettext(TEXT_DOMAIN, "cannot get event"));
   break;

  default:
   error = zpool_standard_error_fmt(hdl, errno,
       dgettext(TEXT_DOMAIN, "cannot get event"));
   break;
  }
 }

 return (error);
}
