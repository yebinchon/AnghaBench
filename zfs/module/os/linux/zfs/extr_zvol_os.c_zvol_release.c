
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zv_open_count; int zv_suspend_lock; int zv_state_lock; } ;
typedef TYPE_1__ zvol_state_t ;
struct gendisk {TYPE_1__* private_data; } ;
typedef int fmode_t ;
typedef scalar_t__ boolean_t ;


 int ASSERT (int) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int MUTEX_HELD (int *) ;
 int RW_READER ;
 scalar_t__ RW_READ_HELD (int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int rw_tryenter (int *,int ) ;
 int zvol_last_close (TYPE_1__*) ;
 int zvol_state_lock ;

__attribute__((used)) static void
zvol_release(struct gendisk *disk, fmode_t mode)
{
 zvol_state_t *zv;
 boolean_t drop_suspend = B_TRUE;

 rw_enter(&zvol_state_lock, RW_READER);
 zv = disk->private_data;

 mutex_enter(&zv->zv_state_lock);
 ASSERT(zv->zv_open_count > 0);





 if (zv->zv_open_count == 1) {
  if (!rw_tryenter(&zv->zv_suspend_lock, RW_READER)) {
   mutex_exit(&zv->zv_state_lock);
   rw_enter(&zv->zv_suspend_lock, RW_READER);
   mutex_enter(&zv->zv_state_lock);

   if (zv->zv_open_count != 1) {
    rw_exit(&zv->zv_suspend_lock);
    drop_suspend = B_FALSE;
   }
  }
 } else {
  drop_suspend = B_FALSE;
 }
 rw_exit(&zvol_state_lock);

 ASSERT(MUTEX_HELD(&zv->zv_state_lock));
 ASSERT(zv->zv_open_count != 1 || RW_READ_HELD(&zv->zv_suspend_lock));

 zv->zv_open_count--;
 if (zv->zv_open_count == 0)
  zvol_last_close(zv);

 mutex_exit(&zv->zv_state_lock);

 if (drop_suspend)
  rw_exit(&zv->zv_suspend_lock);
}
