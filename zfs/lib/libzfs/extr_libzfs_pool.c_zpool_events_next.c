
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* member_0; int zc_cleanup_fd; unsigned int zc_guid; scalar_t__ zc_cookie; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;





 int EZFS_NOMEM ;
 int EZFS_POOLUNAVAIL ;
 int TEXT_DOMAIN ;
 unsigned int ZEVENT_NONBLOCK ;
 int ZEVENT_SIZE ;
 int ZFS_IOC_EVENTS_NEXT ;
 int dgettext (int ,char*) ;
 int errno ;
 scalar_t__ zcmd_alloc_dst_nvlist (int *,TYPE_1__*,int ) ;
 int zcmd_expand_dst_nvlist (int *,TYPE_1__*) ;
 int zcmd_free_nvlists (TYPE_1__*) ;
 int zcmd_read_dst_nvlist (int *,TYPE_1__*,int **) ;
 int zfs_error_fmt (int *,int ,int ) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_1__*) ;
 int zpool_standard_error_fmt (int *,int,int ) ;

int
zpool_events_next(libzfs_handle_t *hdl, nvlist_t **nvp,
    int *dropped, unsigned flags, int zevent_fd)
{
 zfs_cmd_t zc = {"\0"};
 int error = 0;

 *nvp = ((void*)0);
 *dropped = 0;
 zc.zc_cleanup_fd = zevent_fd;

 if (flags & ZEVENT_NONBLOCK)
  zc.zc_guid = ZEVENT_NONBLOCK;

 if (zcmd_alloc_dst_nvlist(hdl, &zc, ZEVENT_SIZE) != 0)
  return (-1);

retry:
 if (zfs_ioctl(hdl, ZFS_IOC_EVENTS_NEXT, &zc) != 0) {
  switch (errno) {
  case 128:
   error = zfs_error_fmt(hdl, EZFS_POOLUNAVAIL,
       dgettext(TEXT_DOMAIN, "zfs shutdown"));
   goto out;
  case 130:

   if (!(flags & ZEVENT_NONBLOCK))
    error = zpool_standard_error_fmt(hdl, errno,
        dgettext(TEXT_DOMAIN, "cannot get event"));

   goto out;
  case 129:
   if (zcmd_expand_dst_nvlist(hdl, &zc) != 0) {
    error = zfs_error_fmt(hdl, EZFS_NOMEM,
        dgettext(TEXT_DOMAIN, "cannot get event"));
    goto out;
   } else {
    goto retry;
   }
  default:
   error = zpool_standard_error_fmt(hdl, errno,
       dgettext(TEXT_DOMAIN, "cannot get event"));
   goto out;
  }
 }

 error = zcmd_read_dst_nvlist(hdl, &zc, nvp);
 if (error != 0)
  goto out;

 *dropped = (int)zc.zc_cookie;
out:
 zcmd_free_nvlists(&zc);

 return (error);
}
