
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_lock; int z_sa_hdl; scalar_t__ z_is_sa; } ;
typedef TYPE_1__ znode_t ;
typedef int zfsvfs_t ;
typedef int uio_t ;
struct inode {int dummy; } ;
typedef int cred_t ;


 TYPE_1__* ITOZ (struct inode*) ;
 int * ITOZSB (struct inode*) ;
 int SA_ZPL_SYMLINK (int *) ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int sa_lookup_uio (int ,int ,int *) ;
 int zfs_sa_readlink (TYPE_1__*,int *) ;

int
zfs_readlink(struct inode *ip, uio_t *uio, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 mutex_enter(&zp->z_lock);
 if (zp->z_is_sa)
  error = sa_lookup_uio(zp->z_sa_hdl,
      SA_ZPL_SYMLINK(zfsvfs), uio);
 else
  error = zfs_sa_readlink(zp, uio);
 mutex_exit(&zp->z_lock);

 ZFS_EXIT(zfsvfs);
 return (error);
}
