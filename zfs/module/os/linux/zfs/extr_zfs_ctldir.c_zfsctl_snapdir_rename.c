
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
 int EINVAL ;
 int ENOTSUP ;
 TYPE_1__* ITOZSB (struct inode*) ;
 int KM_SLEEP ;
 int RW_WRITER ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_CASE_INSENSITIVE ;
 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_objset_name (int ,char*) ;
 int dmu_snapshot_realname (int ,char*,char*,int ,int *) ;
 int dsl_dataset_rename_snapshot (char*,char*,char*,int ) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int zfs_admin_snapshot ;
 int zfs_secpolicy_rename_perms (char*,char*,int *) ;
 int zfs_snapshot_lock ;
 int zfsctl_snapshot_name (TYPE_1__*,char*,int ,char*) ;
 int zfsctl_snapshot_rename (char*,char*) ;

int
zfsctl_snapdir_rename(struct inode *sdip, char *snm,
    struct inode *tdip, char *tnm, cred_t *cr, int flags)
{
 zfsvfs_t *zfsvfs = ITOZSB(sdip);
 char *to, *from, *real, *fsname;
 int error;

 if (!zfs_admin_snapshot)
  return (SET_ERROR(EACCES));

 ZFS_ENTER(zfsvfs);

 to = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
 from = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
 real = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);
 fsname = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);

 if (zfsvfs->z_case == ZFS_CASE_INSENSITIVE) {
  error = dmu_snapshot_realname(zfsvfs->z_os, snm, real,
      ZFS_MAX_DATASET_NAME_LEN, ((void*)0));
  if (error == 0) {
   snm = real;
  } else if (error != ENOTSUP) {
   goto out;
  }
 }

 dmu_objset_name(zfsvfs->z_os, fsname);

 error = zfsctl_snapshot_name(ITOZSB(sdip), snm,
     ZFS_MAX_DATASET_NAME_LEN, from);
 if (error == 0)
  error = zfsctl_snapshot_name(ITOZSB(tdip), tnm,
      ZFS_MAX_DATASET_NAME_LEN, to);
 if (error == 0)
  error = zfs_secpolicy_rename_perms(from, to, cr);
 if (error != 0)
  goto out;




 if (sdip != tdip) {
  error = SET_ERROR(EINVAL);
  goto out;
 }




 if (strcmp(snm, tnm) == 0) {
  error = 0;
  goto out;
 }

 rw_enter(&zfs_snapshot_lock, RW_WRITER);

 error = dsl_dataset_rename_snapshot(fsname, snm, tnm, B_FALSE);
 if (error == 0)
  (void) zfsctl_snapshot_rename(snm, tnm);

 rw_exit(&zfs_snapshot_lock);
out:
 kmem_free(from, ZFS_MAX_DATASET_NAME_LEN);
 kmem_free(to, ZFS_MAX_DATASET_NAME_LEN);
 kmem_free(real, ZFS_MAX_DATASET_NAME_LEN);
 kmem_free(fsname, ZFS_MAX_DATASET_NAME_LEN);

 ZFS_EXIT(zfsvfs);

 return (error);
}
