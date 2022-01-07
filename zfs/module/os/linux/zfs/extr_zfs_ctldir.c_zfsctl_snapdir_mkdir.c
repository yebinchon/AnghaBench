
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int vattr_t ;
struct inode {int dummy; } ;
typedef int cred_t ;


 int EACCES ;
 int EILSEQ ;
 TYPE_1__* ITOZSB (struct inode*) ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int dmu_objset_name (int ,char*) ;
 int dmu_objset_snapshot_one (char*,char*) ;
 char* kmem_alloc (int ,int ) ;
 int kmem_free (char*,int ) ;
 int zfs_admin_snapshot ;
 scalar_t__ zfs_component_namecheck (char*,int *,int *) ;
 int zfs_secpolicy_snapshot_perms (char*,int *) ;
 int zfsctl_snapdir_lookup (struct inode*,char*,struct inode**,int ,int *,int *,int *) ;

int
zfsctl_snapdir_mkdir(struct inode *dip, char *dirname, vattr_t *vap,
    struct inode **ipp, cred_t *cr, int flags)
{
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 char *dsname;
 int error;

 if (!zfs_admin_snapshot)
  return (SET_ERROR(EACCES));

 dsname = kmem_alloc(ZFS_MAX_DATASET_NAME_LEN, KM_SLEEP);

 if (zfs_component_namecheck(dirname, ((void*)0), ((void*)0)) != 0) {
  error = SET_ERROR(EILSEQ);
  goto out;
 }

 dmu_objset_name(zfsvfs->z_os, dsname);

 error = zfs_secpolicy_snapshot_perms(dsname, cr);
 if (error != 0)
  goto out;

 if (error == 0) {
  error = dmu_objset_snapshot_one(dsname, dirname);
  if (error != 0)
   goto out;

  error = zfsctl_snapdir_lookup(dip, dirname, ipp,
      0, cr, ((void*)0), ((void*)0));
 }
out:
 kmem_free(dsname, ZFS_MAX_DATASET_NAME_LEN);

 return (error);
}
