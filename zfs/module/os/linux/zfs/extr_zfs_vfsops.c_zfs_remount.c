
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* z_vfs; int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_11__ {int mnt_data; } ;
typedef TYPE_2__ zfs_mnt_t ;
struct TYPE_12__ {TYPE_1__* vfs_data; } ;
typedef TYPE_3__ vfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;
typedef scalar_t__ boolean_t ;


 int EROFS ;
 int SB_RDONLY ;
 scalar_t__ dmu_objset_is_snapshot (int ) ;
 int dmu_objset_pool (int ) ;
 int dmu_objset_spa (int ) ;
 int spa_writeable (int ) ;
 int txg_wait_synced (int ,int ) ;
 int zfs_is_readonly (TYPE_1__*) ;
 int zfs_register_callbacks (TYPE_3__*) ;
 int zfs_unregister_callbacks (TYPE_1__*) ;
 int zfsvfs_parse_options (int ,TYPE_3__**) ;
 int zfsvfs_vfs_free (TYPE_3__*) ;

int
zfs_remount(struct super_block *sb, int *flags, zfs_mnt_t *zm)
{
 zfsvfs_t *zfsvfs = sb->s_fs_info;
 vfs_t *vfsp;
 boolean_t issnap = dmu_objset_is_snapshot(zfsvfs->z_os);
 int error;

 if ((issnap || !spa_writeable(dmu_objset_spa(zfsvfs->z_os))) &&
     !(*flags & SB_RDONLY)) {
  *flags |= SB_RDONLY;
  return (EROFS);
 }

 error = zfsvfs_parse_options(zm->mnt_data, &vfsp);
 if (error)
  return (error);

 if (!zfs_is_readonly(zfsvfs) && (*flags & SB_RDONLY))
  txg_wait_synced(dmu_objset_pool(zfsvfs->z_os), 0);

 zfs_unregister_callbacks(zfsvfs);
 zfsvfs_vfs_free(zfsvfs->z_vfs);

 vfsp->vfs_data = zfsvfs;
 zfsvfs->z_vfs = vfsp;
 if (!issnap)
  (void) zfs_register_callbacks(vfsp);

 return (error);
}
