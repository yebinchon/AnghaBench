
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int z_os; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;
struct inode {int dummy; } ;
typedef int pathname_t ;
typedef int cred_t ;


 int ENOENT ;
 TYPE_1__* ITOZSB (struct inode*) ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFSCTL_INO_SNAPDIRS ;
 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 int dmu_snapshot_lookup (int ,char*,scalar_t__*) ;
 int simple_dir_inode_operations ;
 int simple_dir_operations ;
 struct inode* zfsctl_inode_lookup (TYPE_1__*,scalar_t__,int *,int *) ;

int
zfsctl_snapdir_lookup(struct inode *dip, char *name, struct inode **ipp,
    int flags, cred_t *cr, int *direntflags, pathname_t *realpnp)
{
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 uint64_t id;
 int error;

 ZFS_ENTER(zfsvfs);

 error = dmu_snapshot_lookup(zfsvfs->z_os, name, &id);
 if (error) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 *ipp = zfsctl_inode_lookup(zfsvfs, ZFSCTL_INO_SNAPDIRS - id,
     &simple_dir_operations, &simple_dir_inode_operations);
 if (*ipp == ((void*)0))
  error = SET_ERROR(ENOENT);

 ZFS_EXIT(zfsvfs);

 return (error);
}
