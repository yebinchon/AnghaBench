
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * zd_range_lock; int * zd_object_lock; int zd_zilog_lock; int zd_dirobj_lock; } ;
typedef TYPE_1__ ztest_ds_t ;


 int ZTEST_OBJECT_LOCKS ;
 int ZTEST_RANGE_LOCKS ;
 int mutex_destroy (int *) ;
 int pthread_rwlock_destroy (int *) ;
 int ztest_rll_destroy (int *) ;

__attribute__((used)) static void
ztest_zd_fini(ztest_ds_t *zd)
{
 int l;

 mutex_destroy(&zd->zd_dirobj_lock);
 (void) pthread_rwlock_destroy(&zd->zd_zilog_lock);

 for (l = 0; l < ZTEST_OBJECT_LOCKS; l++)
  ztest_rll_destroy(&zd->zd_object_lock[l]);

 for (l = 0; l < ZTEST_RANGE_LOCKS; l++)
  ztest_rll_destroy(&zd->zd_range_lock[l]);
}
