
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfs_zevent_t ;
struct TYPE_4__ {int zc_guid; int zc_cleanup_fd; int zc_cookie; int zc_nvlist_dst_size; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
typedef int minor_t ;


 int ENOENT ;
 int ZEVENT_NONBLOCK ;
 int nvlist_free (int *) ;
 int put_nvlist (TYPE_1__*,int *) ;
 int zfs_zevent_fd_hold (int ,int *,int **) ;
 int zfs_zevent_fd_rele (int ) ;
 int zfs_zevent_next (int *,int **,int *,int *) ;
 int zfs_zevent_wait (int *) ;

__attribute__((used)) static int
zfs_ioc_events_next(zfs_cmd_t *zc)
{
 zfs_zevent_t *ze;
 nvlist_t *event = ((void*)0);
 minor_t minor;
 uint64_t dropped = 0;
 int error;

 error = zfs_zevent_fd_hold(zc->zc_cleanup_fd, &minor, &ze);
 if (error != 0)
  return (error);

 do {
  error = zfs_zevent_next(ze, &event,
      &zc->zc_nvlist_dst_size, &dropped);
  if (event != ((void*)0)) {
   zc->zc_cookie = dropped;
   error = put_nvlist(zc, event);
   nvlist_free(event);
  }

  if (zc->zc_guid & ZEVENT_NONBLOCK)
   break;

  if ((error == 0) || (error != ENOENT))
   break;

  error = zfs_zevent_wait(ze);
  if (error != 0)
   break;
 } while (1);

 zfs_zevent_fd_rele(zc->zc_cleanup_fd);

 return (error);
}
