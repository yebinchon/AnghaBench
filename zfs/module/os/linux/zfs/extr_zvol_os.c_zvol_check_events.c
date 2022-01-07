
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zv_state_lock; scalar_t__ zv_changed; } ;
typedef TYPE_1__ zvol_state_t ;
struct gendisk {TYPE_1__* private_data; } ;


 unsigned int DISK_EVENT_MEDIA_CHANGE ;
 int RW_READER ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int zvol_state_lock ;

__attribute__((used)) static unsigned int
zvol_check_events(struct gendisk *disk, unsigned int clearing)
{
 unsigned int mask = 0;

 rw_enter(&zvol_state_lock, RW_READER);

 zvol_state_t *zv = disk->private_data;
 if (zv != ((void*)0)) {
  mutex_enter(&zv->zv_state_lock);
  mask = zv->zv_changed ? DISK_EVENT_MEDIA_CHANGE : 0;
  zv->zv_changed = 0;
  mutex_exit(&zv->zv_state_lock);
 }

 rw_exit(&zvol_state_lock);

 return (mask);
}
