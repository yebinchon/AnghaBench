
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* member_0; scalar_t__ zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int msg ;
typedef int libzfs_handle_t ;


 int TEXT_DOMAIN ;
 int ZFS_IOC_EVENTS_CLEAR ;
 char* dgettext (int ,char*) ;
 int errno ;
 int snprintf (char*,int,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_1__*) ;
 int zpool_standard_error_fmt (int *,int ,char*) ;

int
zpool_events_clear(libzfs_handle_t *hdl, int *count)
{
 zfs_cmd_t zc = {"\0"};
 char msg[1024];

 (void) snprintf(msg, sizeof (msg), dgettext(TEXT_DOMAIN,
     "cannot clear events"));

 if (zfs_ioctl(hdl, ZFS_IOC_EVENTS_CLEAR, &zc) != 0)
  return (zpool_standard_error_fmt(hdl, errno, msg));

 if (count != ((void*)0))
  *count = (int)zc.zc_cookie;

 return (0);
}
