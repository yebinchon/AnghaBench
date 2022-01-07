
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode_t ;
typedef int zfsvfs_t ;
typedef int vsecattr_t ;
struct inode {int dummy; } ;
typedef int cred_t ;
typedef int boolean_t ;


 int ATTR_NOACLCHECK ;
 int B_FALSE ;
 int B_TRUE ;
 int * ITOZ (struct inode*) ;
 int * ITOZSB (struct inode*) ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (int *) ;
 int zfs_getacl (int *,int *,int ,int *) ;

int
zfs_getsecattr(struct inode *ip, vsecattr_t *vsecp, int flag, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 int error;
 boolean_t skipaclchk = (flag & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);
 error = zfs_getacl(zp, vsecp, skipaclchk, cr);
 ZFS_EXIT(zfsvfs);

 return (error);
}
