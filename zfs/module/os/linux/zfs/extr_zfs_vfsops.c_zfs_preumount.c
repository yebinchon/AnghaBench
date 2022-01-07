
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;


 int dmu_objset_pool (int ) ;
 int dsl_pool_iput_taskq (int ) ;
 int taskq_wait_outstanding (int ,int ) ;
 int zfs_unlinked_drain_stop_wait (TYPE_1__*) ;
 int zfsctl_destroy (TYPE_1__*) ;

void
zfs_preumount(struct super_block *sb)
{
 zfsvfs_t *zfsvfs = sb->s_fs_info;


 if (zfsvfs) {
  zfs_unlinked_drain_stop_wait(zfsvfs);
  zfsctl_destroy(sb->s_fs_info);
  taskq_wait_outstanding(dsl_pool_iput_taskq(
      dmu_objset_pool(zfsvfs->z_os)), 0);
  taskq_wait_outstanding(dsl_pool_iput_taskq(
      dmu_objset_pool(zfsvfs->z_os)), 0);
 }
}
