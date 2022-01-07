
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zv_open_count; int zv_flags; int zv_suspend_lock; int zv_state_lock; } ;
typedef TYPE_2__ zvol_state_t ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {TYPE_2__* private_data; } ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int EINTR ;
 int ENXIO ;
 int ERESTARTSYS ;
 int EROFS ;
 int FMODE_WRITE ;
 int MUTEX_HELD (int *) ;
 int RW_READER ;
 scalar_t__ RW_READ_HELD (int *) ;
 int SET_ERROR (int) ;
 int ZVOL_RDONLY ;
 int check_disk_change (struct block_device*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int rw_tryenter (int *,int ) ;
 int schedule () ;
 int zvol_first_open (TYPE_2__*,int) ;
 int zvol_last_close (TYPE_2__*) ;
 int zvol_state_lock ;

__attribute__((used)) static int
zvol_open(struct block_device *bdev, fmode_t flag)
{
 zvol_state_t *zv;
 int error = 0;
 boolean_t drop_suspend = B_TRUE;

 rw_enter(&zvol_state_lock, RW_READER);






 zv = bdev->bd_disk->private_data;
 if (zv == ((void*)0)) {
  rw_exit(&zvol_state_lock);
  return (SET_ERROR(-ENXIO));
 }

 mutex_enter(&zv->zv_state_lock);





 if (zv->zv_open_count == 0) {
  if (!rw_tryenter(&zv->zv_suspend_lock, RW_READER)) {
   mutex_exit(&zv->zv_state_lock);
   rw_enter(&zv->zv_suspend_lock, RW_READER);
   mutex_enter(&zv->zv_state_lock);

   if (zv->zv_open_count != 0) {
    rw_exit(&zv->zv_suspend_lock);
    drop_suspend = B_FALSE;
   }
  }
 } else {
  drop_suspend = B_FALSE;
 }
 rw_exit(&zvol_state_lock);

 ASSERT(MUTEX_HELD(&zv->zv_state_lock));
 ASSERT(zv->zv_open_count != 0 || RW_READ_HELD(&zv->zv_suspend_lock));

 if (zv->zv_open_count == 0) {
  error = -zvol_first_open(zv, !(flag & FMODE_WRITE));
  if (error)
   goto out_mutex;
 }

 if ((flag & FMODE_WRITE) && (zv->zv_flags & ZVOL_RDONLY)) {
  error = -EROFS;
  goto out_open_count;
 }

 zv->zv_open_count++;

 mutex_exit(&zv->zv_state_lock);
 if (drop_suspend)
  rw_exit(&zv->zv_suspend_lock);

 check_disk_change(bdev);

 return (0);

out_open_count:
 if (zv->zv_open_count == 0)
  zvol_last_close(zv);

out_mutex:
 mutex_exit(&zv->zv_state_lock);
 if (drop_suspend)
  rw_exit(&zv->zv_suspend_lock);
 if (error == -EINTR) {
  error = -ERESTARTSYS;
  schedule();
 }
 return (SET_ERROR(error));
}
