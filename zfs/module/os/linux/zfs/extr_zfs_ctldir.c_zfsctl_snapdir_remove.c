
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_case; int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
struct inode {int dummy; } ;
typedef int cred_t ;


 int B_FALSE ;
 int EACCES ;
 int ENOENT ;
 int ENOTSUP ;
 TYPE_1__* ITOZSB (struct inode*) ;
 int KM_SLEEP ;
 int MNT_FORCE ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_CASE_INSENSITIVE ;
 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_snapshot_realname (int ,char*,char*,int ,int *) ;
 int dsl_destroy_snapshot (char*,int ) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int zfs_admin_snapshot ;
 int zfs_secpolicy_destroy_perms (char*,int *) ;
 int zfsctl_snapshot_name (TYPE_1__*,char*,int ,char*) ;
 int zfsctl_snapshot_unmount (char*,int ) ;

int
zfsctl_snapdir_remove(struct inode *dip, char *name, cred_t *cr, int flags)
{
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 char *snapname, *real;
 int error;

 if (!zfs_admin_snapshot)
  return (SET_ERROR(EACCES));

 ZFS_ENTER(zfsvfs);

 snapname = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
 real = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);

 if (zfsvfs->z_case == ZFS_CASE_INSENSITIVE) {
  error = dmu_snapshot_realname(zfsvfs->z_os, name, real,
      ZFS_MAX_DATASET_NAME_LEN, ((void*)0));
  if (error == 0) {
   name = real;
  } else if (error != ENOTSUP) {
   goto out;
  }
 }

 error = zfsctl_snapshot_name(ITOZSB(dip), name,
     ZFS_MAX_DATASET_NAME_LEN, snapname);
 if (error == 0)
  error = zfs_secpolicy_destroy_perms(snapname, cr);
 if (error != 0)
  goto out;

 error = zfsctl_snapshot_unmount(snapname, MNT_FORCE);
 if ((error == 0) || (error == ENOENT))
  error = dsl_destroy_snapshot(snapname, B_FALSE);
out:
 kmem_free(snapname, ZFS_MAX_DATASET_NAME_LEN);
 kmem_free(real, ZFS_MAX_DATASET_NAME_LEN);

 ZFS_EXIT(zfsvfs);

 return (error);
}
