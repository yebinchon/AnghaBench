
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int zv_volsize; int zv_state_lock; TYPE_1__* zv_zso; } ;
typedef TYPE_2__ zvol_state_t ;
struct gendisk {TYPE_2__* private_data; } ;
struct TYPE_3__ {int zvo_disk; } ;


 int RW_READER ;
 int SECTOR_BITS ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int set_capacity (int ,int) ;
 int zvol_state_lock ;

__attribute__((used)) static int
zvol_revalidate_disk(struct gendisk *disk)
{
 rw_enter(&zvol_state_lock, RW_READER);

 zvol_state_t *zv = disk->private_data;
 if (zv != ((void*)0)) {
  mutex_enter(&zv->zv_state_lock);
  set_capacity(zv->zv_zso->zvo_disk,
      zv->zv_volsize >> SECTOR_BITS);
  mutex_exit(&zv->zv_state_lock);
 }

 rw_exit(&zvol_state_lock);

 return (0);
}
