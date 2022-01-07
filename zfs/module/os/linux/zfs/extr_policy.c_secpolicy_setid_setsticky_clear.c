
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int va_mode; int va_gid; int va_uid; } ;
typedef TYPE_1__ vattr_t ;
struct inode {int i_mode; } ;
typedef int cred_t ;


 int S_ISDIR (int ) ;
 int S_ISGID ;
 int S_ISUID ;
 int S_ISVTX ;
 int secpolicy_vnode_setid_modify (int *,int ) ;
 scalar_t__ secpolicy_vnode_setids_setgids (int *,int ) ;
 scalar_t__ secpolicy_vnode_stky_modify (int *) ;

int
secpolicy_setid_setsticky_clear(struct inode *ip, vattr_t *vap,
    const vattr_t *ovap, cred_t *cr)
{
 int error;

 if ((vap->va_mode & S_ISUID) != 0 &&
     (error = secpolicy_vnode_setid_modify(cr,
     ovap->va_uid)) != 0) {
  return (error);
 }





 if (!S_ISDIR(ip->i_mode) && (vap->va_mode & S_ISVTX) != 0 &&
     secpolicy_vnode_stky_modify(cr) != 0) {
  vap->va_mode &= ~S_ISVTX;
 }





 if ((vap->va_mode & S_ISGID) != 0 &&
     secpolicy_vnode_setids_setgids(cr, ovap->va_gid) != 0) {
  vap->va_mode &= ~S_ISGID;
 }

 return (0);
}
