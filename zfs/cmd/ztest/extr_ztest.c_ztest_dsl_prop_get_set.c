
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zd_name; } ;
typedef TYPE_1__ ztest_ds_t ;
typedef int zfs_prop_t ;
typedef int uint64_t ;
typedef int proplist ;


 int VERIFY0 (int ) ;
 int ZFS_PROP_CHECKSUM ;
 int ZFS_PROP_COMPRESSION ;
 int ZFS_PROP_COPIES ;
 int ZFS_PROP_DEDUP ;
 int ZFS_PROP_RECORDSIZE ;
 int pthread_rwlock_rdlock (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int ztest_dsl_prop_set_uint64 (int ,int ,int ,int) ;
 int ztest_name_lock ;
 scalar_t__ ztest_random (int) ;
 int ztest_random_blocksize () ;
 int ztest_random_dsl_prop (int ) ;

void
ztest_dsl_prop_get_set(ztest_ds_t *zd, uint64_t id)
{
 zfs_prop_t proplist[] = {
  ZFS_PROP_CHECKSUM,
  ZFS_PROP_COMPRESSION,
  ZFS_PROP_COPIES,
  ZFS_PROP_DEDUP
 };
 int p;

 (void) pthread_rwlock_rdlock(&ztest_name_lock);

 for (p = 0; p < sizeof (proplist) / sizeof (proplist[0]); p++)
  (void) ztest_dsl_prop_set_uint64(zd->zd_name, proplist[p],
      ztest_random_dsl_prop(proplist[p]), (int)ztest_random(2));

 VERIFY0(ztest_dsl_prop_set_uint64(zd->zd_name, ZFS_PROP_RECORDSIZE,
     ztest_random_blocksize(), (int)ztest_random(2)));

 (void) pthread_rwlock_unlock(&ztest_name_lock);
}
