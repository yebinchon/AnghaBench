
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* z_os; scalar_t__ z_snap_defer_time; int z_issnap; } ;
typedef TYPE_1__ zfsvfs_t ;
struct TYPE_5__ {int os_spa; } ;


 int HZ ;
 scalar_t__ MAX (int,int) ;
 int dmu_objset_id (TYPE_3__*) ;
 scalar_t__ jiffies ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int zfs_expire_snapshot ;
 int zfsctl_snapshot_unmount_delay (int ,int ,int) ;

inline void
zfs_exit_fs(zfsvfs_t *zfsvfs)
{
 if (!zfsvfs->z_issnap)
  return;

 if (time_after(jiffies, zfsvfs->z_snap_defer_time +
     MAX(zfs_expire_snapshot * HZ / 2, HZ))) {
  zfsvfs->z_snap_defer_time = jiffies;
  zfsctl_snapshot_unmount_delay(zfsvfs->z_os->os_spa,
      dmu_objset_id(zfsvfs->z_os),
      zfs_expire_snapshot);
 }
}
