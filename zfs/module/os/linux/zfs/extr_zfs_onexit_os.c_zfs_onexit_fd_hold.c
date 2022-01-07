
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_onexit_t ;
typedef int minor_t ;


 int EBADF ;
 int SET_ERROR (int ) ;
 int ZST_ONEXIT ;
 int zfs_onexit_fd_rele (int) ;
 int * zfsdev_get_state (int ,int ) ;
 int zfsdev_getminor (int,int *) ;

int
zfs_onexit_fd_hold(int fd, minor_t *minorp)
{
 zfs_onexit_t *zo = ((void*)0);
 int error;

 error = zfsdev_getminor(fd, minorp);
 if (error) {
  zfs_onexit_fd_rele(fd);
  return (error);
 }

 zo = zfsdev_get_state(*minorp, ZST_ONEXIT);
 if (zo == ((void*)0)) {
  zfs_onexit_fd_rele(fd);
  return (SET_ERROR(EBADF));
 }
 return (0);
}
