
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* spa_config_lock; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_6__ {scalar_t__ scl_writer; int scl_lock; int scl_count; scalar_t__ scl_write_wanted; } ;
typedef TYPE_2__ spa_config_lock_t ;
typedef scalar_t__ krw_t ;


 int ASSERT (int) ;
 scalar_t__ RW_READER ;
 int SCL_LOCKS ;
 scalar_t__ curthread ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_exit (TYPE_1__*,int,void*) ;
 int zfs_refcount_add (int *,void*) ;
 int zfs_refcount_is_zero (int *) ;

int
spa_config_tryenter(spa_t *spa, int locks, void *tag, krw_t rw)
{
 for (int i = 0; i < SCL_LOCKS; i++) {
  spa_config_lock_t *scl = &spa->spa_config_lock[i];
  if (!(locks & (1 << i)))
   continue;
  mutex_enter(&scl->scl_lock);
  if (rw == RW_READER) {
   if (scl->scl_writer || scl->scl_write_wanted) {
    mutex_exit(&scl->scl_lock);
    spa_config_exit(spa, locks & ((1 << i) - 1),
        tag);
    return (0);
   }
  } else {
   ASSERT(scl->scl_writer != curthread);
   if (!zfs_refcount_is_zero(&scl->scl_count)) {
    mutex_exit(&scl->scl_lock);
    spa_config_exit(spa, locks & ((1 << i) - 1),
        tag);
    return (0);
   }
   scl->scl_writer = curthread;
  }
  (void) zfs_refcount_add(&scl->scl_count, tag);
  mutex_exit(&scl->scl_lock);
 }
 return (1);
}
