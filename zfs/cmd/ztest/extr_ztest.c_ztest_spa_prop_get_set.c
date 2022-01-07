
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ztest_ds_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_2__ {int zo_verbose; } ;


 int VERIFY0 (int ) ;
 int ZPOOL_PROP_AUTOTRIM ;
 int dump_nvlist (int *,int) ;
 int nvlist_free (int *) ;
 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int spa_prop_get (int ,int **) ;
 int ztest_name_lock ;
 TYPE_1__ ztest_opts ;
 int ztest_random (int) ;
 int ztest_spa ;
 int ztest_spa_prop_set_uint64 (int ,int ) ;

void
ztest_spa_prop_get_set(ztest_ds_t *zd, uint64_t id)
{
 nvlist_t *props = ((void*)0);

 (void) pthread_rwlock_rdlock(&ztest_name_lock);

 (void) ztest_spa_prop_set_uint64(ZPOOL_PROP_AUTOTRIM, ztest_random(2));

 VERIFY0(spa_prop_get(ztest_spa, &props));

 if (ztest_opts.zo_verbose >= 6)
  dump_nvlist(props, 4);

 nvlist_free(props);

 (void) pthread_rwlock_unlock(&ztest_name_lock);
}
