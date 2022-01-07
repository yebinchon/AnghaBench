
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ zd_zilog; int zd_dirobj_lock; int zd_zilog_lock; int * zd_os; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;
typedef int objset_t ;


 int VERIFY (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;
 int zil_close (scalar_t__) ;
 scalar_t__ zil_open (int *,int ) ;
 int zil_replay (int *,TYPE_1__*,int ) ;
 int ztest_get_data ;
 int ztest_replay_vector ;
 int ztest_vdev_lock ;

void
ztest_zil_remount(ztest_ds_t *zd, uint64_t id)
{
 objset_t *os = zd->zd_os;






 mutex_enter(&ztest_vdev_lock);






 mutex_enter(&zd->zd_dirobj_lock);
 (void) pthread_rwlock_wrlock(&zd->zd_zilog_lock);


 zil_close(zd->zd_zilog);


 VERIFY(zil_open(os, ztest_get_data) == zd->zd_zilog);
 zil_replay(os, zd, ztest_replay_vector);

 (void) pthread_rwlock_unlock(&zd->zd_zilog_lock);
 mutex_exit(&zd->zd_dirobj_lock);
 mutex_exit(&ztest_vdev_lock);
}
