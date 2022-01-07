
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
typedef scalar_t__ uint64_t ;
struct inode {int dummy; } ;
typedef int offset_t ;
struct TYPE_4__ {scalar_t__ l_len; scalar_t__ l_start; } ;
typedef TYPE_1__ flock64_t ;
typedef int cred_t ;


 int ACE_WRITE_DATA ;
 int B_FALSE ;
 int EINVAL ;
 int EROFS ;
 int F_FREESP ;
 int * ITOZ (struct inode*) ;
 int * ITOZSB (struct inode*) ;
 int SEEK_SET ;
 int SET_ERROR (int ) ;
 int TRUE ;
 int ZFS_ENTER (int *) ;
 int ZFS_EXIT (int *) ;
 int ZFS_VERIFY_ZP (int *) ;
 int convoff (struct inode*,TYPE_1__*,int ,int ) ;
 int zfs_freesp (int *,scalar_t__,scalar_t__,int,int ) ;
 scalar_t__ zfs_is_readonly (int *) ;
 int zfs_zaccess (int *,int ,int ,int ,int *) ;

int
zfs_space(struct inode *ip, int cmd, flock64_t *bfp, int flag,
    offset_t offset, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ITOZSB(ip);
 uint64_t off, len;
 int error;

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zp);

 if (cmd != F_FREESP) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EINVAL));
 }





 if (zfs_is_readonly(zfsvfs)) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EROFS));
 }

 if ((error = convoff(ip, bfp, SEEK_SET, offset))) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (bfp->l_len < 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EINVAL));
 }







 if ((error = zfs_zaccess(zp, ACE_WRITE_DATA, 0, B_FALSE, cr))) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 off = bfp->l_start;
 len = bfp->l_len;

 error = zfs_freesp(zp, off, len, flag, TRUE);

 ZFS_EXIT(zfsvfs);
 return (error);
}
