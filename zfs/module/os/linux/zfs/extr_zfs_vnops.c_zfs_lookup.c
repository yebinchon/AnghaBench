
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int z_pflags; int * z_sa_hdl; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_14__ {scalar_t__ z_utf8; } ;
typedef TYPE_2__ zfsvfs_t ;
struct inode {int i_mode; } ;
typedef int pathname_t ;
typedef int cred_t ;


 int ACE_EXECUTE ;
 int B_FALSE ;
 int EILSEQ ;
 int EINVAL ;
 int EIO ;
 int ENOTDIR ;
 int FIGNORECASE ;
 TYPE_1__* ITOZ (struct inode*) ;
 TYPE_2__* ITOZSB (struct inode*) ;
 int LOOKUP_XATTR ;
 int SET_ERROR (int ) ;
 int S_ISDIR (int ) ;
 int U8_VALIDATE_ENTIRE ;
 int ZFS_ENTER (TYPE_2__*) ;
 int ZFS_EXIT (TYPE_2__*) ;
 int ZFS_VERIFY_ZP (TYPE_1__*) ;
 int ZFS_XATTR ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int strlen (char*) ;
 scalar_t__ u8_validate (char*,int ,int *,int ,int*) ;
 int zfs_dirlook (TYPE_1__*,char*,struct inode**,int,int*,int *) ;
 int zfs_fastaccesschk_execute (TYPE_1__*,int *) ;
 int zfs_get_xattrdir (TYPE_1__*,struct inode**,int *,int) ;
 int zfs_inode_update (TYPE_1__*) ;
 int zfs_zaccess (TYPE_1__*,int ,int ,int ,int *) ;

int
zfs_lookup(struct inode *dip, char *nm, struct inode **ipp, int flags,
    cred_t *cr, int *direntflags, pathname_t *realpnp)
{
 znode_t *zdp = ITOZ(dip);
 zfsvfs_t *zfsvfs = ITOZSB(dip);
 int error = 0;
 if (!(flags & (LOOKUP_XATTR | FIGNORECASE))) {

  if (!S_ISDIR(dip->i_mode)) {
   return (SET_ERROR(ENOTDIR));
  } else if (zdp->z_sa_hdl == ((void*)0)) {
   return (SET_ERROR(EIO));
  }

  if (nm[0] == 0 || (nm[0] == '.' && nm[1] == '\0')) {
   error = zfs_fastaccesschk_execute(zdp, cr);
   if (!error) {
    *ipp = dip;
    igrab(*ipp);
    return (0);
   }
   return (error);
  }
 }

 ZFS_ENTER(zfsvfs);
 ZFS_VERIFY_ZP(zdp);

 *ipp = ((void*)0);

 if (flags & LOOKUP_XATTR) {




  if (zdp->z_pflags & ZFS_XATTR) {
   ZFS_EXIT(zfsvfs);
   return (SET_ERROR(EINVAL));
  }

  if ((error = zfs_get_xattrdir(zdp, ipp, cr, flags))) {
   ZFS_EXIT(zfsvfs);
   return (error);
  }





  if ((error = zfs_zaccess(ITOZ(*ipp), ACE_EXECUTE, 0,
      B_FALSE, cr))) {
   iput(*ipp);
   *ipp = ((void*)0);
  }

  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (!S_ISDIR(dip->i_mode)) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(ENOTDIR));
 }





 if ((error = zfs_zaccess(zdp, ACE_EXECUTE, 0, B_FALSE, cr))) {
  ZFS_EXIT(zfsvfs);
  return (error);
 }

 if (zfsvfs->z_utf8 && u8_validate(nm, strlen(nm),
     ((void*)0), U8_VALIDATE_ENTIRE, &error) < 0) {
  ZFS_EXIT(zfsvfs);
  return (SET_ERROR(EILSEQ));
 }

 error = zfs_dirlook(zdp, nm, ipp, flags, direntflags, realpnp);
 if ((error == 0) && (*ipp))
  zfs_inode_update(ITOZ(*ipp));

 ZFS_EXIT(zfsvfs);
 return (error);
}
