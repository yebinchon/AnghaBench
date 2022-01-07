
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode_t ;
typedef int zfsvfs_t ;
struct inode {int dummy; } ;
typedef int cred_t ;


 int B_FALSE ;
 int * ITOZ (struct inode*) ;
 int * ITOZSB (struct inode*) ;
 int V_ACE_MASK ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (int *) ;
 int zfs_zaccess (int *,int,int,int ,int *) ;
 int zfs_zaccess_rwx (int *,int,int,int *) ;

int
zfs_access(struct inode *ip, int mode, int flag, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if (flag & V_ACE_MASK)
  error = zfs_zaccess(zp, mode, flag, B_FALSE, cr);
 else
  error = zfs_zaccess_rwx(zp, mode, flag, cr);

 ZFS_EXIT(zfsvfs);
 return (error);
}
