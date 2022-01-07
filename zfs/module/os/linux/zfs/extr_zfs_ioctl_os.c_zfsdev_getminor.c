
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int zs_minor; struct TYPE_7__* zs_next; } ;
typedef TYPE_2__ zfsdev_state_t ;
typedef int minor_t ;
struct TYPE_8__ {TYPE_1__* f_file; } ;
typedef TYPE_3__ file_t ;
struct TYPE_6__ {TYPE_2__* private_data; } ;


 int ASSERT (int) ;
 int EBADF ;
 int MUTEX_HELD (int *) ;
 int SET_ERROR (int ) ;
 TYPE_3__* getf (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 TYPE_2__* zfsdev_state_list ;
 int zfsdev_state_lock ;

int
zfsdev_getminor(int fd, minor_t *minorp)
{
 zfsdev_state_t *zs, *fpd;
 file_t *fp;

 ASSERT(!MUTEX_HELD(&zfsdev_state_lock));
 fp = getf(fd);

 if (fp == ((void*)0))
  return (SET_ERROR(EBADF));

 fpd = fp->f_file->private_data;
 if (fpd == ((void*)0))
  return (SET_ERROR(EBADF));

 mutex_enter(&zfsdev_state_lock);

 for (zs = zfsdev_state_list; zs != ((void*)0); zs = zs->zs_next) {

  if (zs->zs_minor == -1)
   continue;

  if (fpd == zs) {
   *minorp = fpd->zs_minor;
   mutex_exit(&zfsdev_state_lock);
   return (0);
  }
 }

 mutex_exit(&zfsdev_state_lock);

 return (SET_ERROR(EBADF));
}
