
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * z_log; int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct super_block {TYPE_1__* s_fs_info; } ;
struct TYPE_7__ {int dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int cred_t ;


 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 TYPE_2__* dmu_objset_pool (int ) ;
 scalar_t__ spa_suspended (int ) ;
 int spa_sync_allpools () ;
 int zil_commit (int *,int ) ;

int
zfs_sync(struct super_block *sb, int wait, cred_t *cr)
{
 zfsvfs_t *zfsvfs = sb->s_fs_info;





 if (!wait)
  return (0);

 if (zfsvfs != ((void*)0)) {



  dsl_pool_t *dp;

  ZFS_ENTER(zfsvfs);
  dp = dmu_objset_pool(zfsvfs->z_os);





  if (spa_suspended(dp->dp_spa)) {
   ZFS_EXIT(zfsvfs);
   return (0);
  }

  if (zfsvfs->z_log != ((void*)0))
   zil_commit(zfsvfs->z_log, 0);

  ZFS_EXIT(zfsvfs);
 } else {





  spa_sync_allpools();
 }

 return (0);
}
