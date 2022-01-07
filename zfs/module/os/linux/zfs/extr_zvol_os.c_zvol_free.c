
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ zv_open_count; struct TYPE_6__* zv_zso; int zvo_kstat; int zv_state_lock; int zvo_dev; TYPE_3__* zvo_disk; int zvo_queue; int zv_rangelock; int zv_suspend_lock; } ;
typedef TYPE_1__ zvol_state_t ;
struct zvol_state_os {int dummy; } ;
struct TYPE_7__ {int * private_data; } ;


 int ASSERT (int) ;
 int MINOR (int ) ;
 int MUTEX_HELD (int *) ;
 int RW_LOCK_HELD (int *) ;
 int ZVOL_MINOR_BITS ;
 int blk_cleanup_queue (int ) ;
 int dataset_kstats_destroy (int *) ;
 int del_gendisk (TYPE_3__*) ;
 int ida_simple_remove (int *,int) ;
 int kmem_free (TYPE_1__*,int) ;
 int mutex_destroy (int *) ;
 int put_disk (TYPE_3__*) ;
 int rw_destroy (int *) ;
 int zfs_rangelock_fini (int *) ;
 int zvol_ida ;

__attribute__((used)) static void
zvol_free(zvol_state_t *zv)
{

 ASSERT(!RW_LOCK_HELD(&zv->zv_suspend_lock));
 ASSERT(!MUTEX_HELD(&zv->zv_state_lock));
 ASSERT(zv->zv_open_count == 0);
 ASSERT(zv->zv_zso->zvo_disk->private_data == ((void*)0));

 rw_destroy(&zv->zv_suspend_lock);
 zfs_rangelock_fini(&zv->zv_rangelock);

 del_gendisk(zv->zv_zso->zvo_disk);
 blk_cleanup_queue(zv->zv_zso->zvo_queue);
 put_disk(zv->zv_zso->zvo_disk);

 ida_simple_remove(&zvol_ida,
     MINOR(zv->zv_zso->zvo_dev) >> ZVOL_MINOR_BITS);

 mutex_destroy(&zv->zv_state_lock);
 dataset_kstats_destroy(&zv->zv_zso->zvo_kstat);

 kmem_free(zv->zv_zso, sizeof (struct zvol_state_os));
 kmem_free(zv, sizeof (zvol_state_t));
}
