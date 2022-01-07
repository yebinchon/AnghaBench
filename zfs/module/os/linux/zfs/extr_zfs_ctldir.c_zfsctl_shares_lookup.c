
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int znode_t ;
struct TYPE_6__ {scalar_t__ z_shares_dir; } ;
typedef TYPE_1__ zfsvfs_t ;
struct inode {int dummy; } ;
typedef int pathname_t ;
typedef int cred_t ;


 int ENOTSUP ;
 TYPE_1__* ITOZSB (struct inode*) ;
 int SET_ERROR (int ) ;
 int ZFS_ENTER (TYPE_1__*) ;
 int ZFS_EXIT (TYPE_1__*) ;
 int ZTOI (int *) ;
 int iput (int ) ;
 int zfs_lookup (int ,char*,struct inode**,int ,int *,int *,int *) ;
 int zfs_zget (TYPE_1__*,scalar_t__,int **) ;

int
zfsctl_shares_lookup(struct inode *dip, char *name, struct inode **ipp,
    int flags, cred_t *cr, int *direntflags, pathname_t *realpnp)
{
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 struct inode *ip;
 znode_t *dzp;
 int error;

 ZFS_ENTER(zfsvfs);

 if (zfsvfs->z_shares_dir == 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(ENOTSUP));
 }

 if ((error = zfs_zget(zfsvfs, zfsvfs->z_shares_dir, &dzp)) == 0) {
  error = zfs_lookup(ZTOI(dzp), name, &ip, 0, cr, ((void*)0), ((void*)0));
  iput(ZTOI(dzp));
 }

 ZFS_EXIT(zfsvfs);

 return (error);
}
