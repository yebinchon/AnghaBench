
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int znode_t ;
typedef int zfsvfs_t ;
typedef int zfs_dirlock_t ;
struct TYPE_3__ {int va_mask; int va_mode; int * va_dentry; int va_gid; int va_uid; } ;
typedef TYPE_1__ vattr_t ;
struct inode {int dummy; } ;
typedef int cred_t ;


 int ATTR_GID ;
 int ATTR_MODE ;
 int ATTR_UID ;
 int CREATE_XATTR_DIR ;
 int ENOENT ;
 int ERESTART ;
 int EROFS ;
 int SET_ERROR (int ) ;
 int S_IFDIR ;
 int S_ISVTX ;
 struct inode* ZTOI (int *) ;
 int * ZTOZSB (int *) ;
 int ZXATTR ;
 int zfs_dirent_lock (int **,int *,char*,int **,int ,int *,int *) ;
 int zfs_dirent_unlock (int *) ;
 int zfs_fuid_map_ids (int *,int *,int *,int *) ;
 scalar_t__ zfs_is_readonly (int *) ;
 int zfs_make_xattrdir (int *,TYPE_1__*,struct inode**,int *) ;

int
zfs_get_xattrdir(znode_t *zp, struct inode **xipp, cred_t *cr, int flags)
{
 zfsvfs_t *zfsvfs = ZTOZSB(zp);
 znode_t *xzp;
 zfs_dirlock_t *dl;
 vattr_t va;
 int error;
top:
 error = zfs_dirent_lock(&dl, zp, "", &xzp, ZXATTR, ((void*)0), ((void*)0));
 if (error)
  return (error);

 if (xzp != ((void*)0)) {
  *xipp = ZTOI(xzp);
  zfs_dirent_unlock(dl);
  return (0);
 }

 if (!(flags & CREATE_XATTR_DIR)) {
  zfs_dirent_unlock(dl);
  return (SET_ERROR(ENOENT));
 }

 if (zfs_is_readonly(zfsvfs)) {
  zfs_dirent_unlock(dl);
  return (SET_ERROR(EROFS));
 }
 va.va_mask = ATTR_MODE | ATTR_UID | ATTR_GID;
 va.va_mode = S_IFDIR | S_ISVTX | 0777;
 zfs_fuid_map_ids(zp, cr, &va.va_uid, &va.va_gid);

 va.va_dentry = ((void*)0);
 error = zfs_make_xattrdir(zp, &va, xipp, cr);
 zfs_dirent_unlock(dl);

 if (error == ERESTART) {

  goto top;
 }

 return (error);
}
