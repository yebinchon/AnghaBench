
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zd_name; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int uint64_t ;


 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int ztest_name_lock ;
 int ztest_snapshot_create (int ,int ) ;
 int ztest_snapshot_destroy (int ,int ) ;

void
ztest_dmu_snapshot_create_destroy(ztest_ds_t *zd, uint64_t id)
{
 (void) pthread_rwlock_rdlock(&ztest_name_lock);
 (void) ztest_snapshot_destroy(zd->zd_name, id);
 (void) ztest_snapshot_create(zd->zd_name, id);
 (void) pthread_rwlock_unlock(&ztest_name_lock);
}
