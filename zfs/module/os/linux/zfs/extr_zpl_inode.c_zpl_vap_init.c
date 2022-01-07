
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int va_mode; int va_gid; int va_uid; int va_mask; } ;
typedef TYPE_1__ vattr_t ;
typedef int umode_t ;
struct inode {int i_mode; int i_gid; } ;
typedef int cred_t ;


 int ATTR_MODE ;
 int KGID_TO_SGID (int ) ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 int crgetfsgid (int *) ;
 int crgetfsuid (int *) ;

void
zpl_vap_init(vattr_t *vap, struct inode *dir, umode_t mode, cred_t *cr)
{
 vap->va_mask = ATTR_MODE;
 vap->va_mode = mode;
 vap->va_uid = crgetfsuid(cr);

 if (dir && dir->i_mode & S_ISGID) {
  vap->va_gid = KGID_TO_SGID(dir->i_gid);
  if (S_ISDIR(mode))
   vap->va_mode |= S_ISGID;
 } else {
  vap->va_gid = crgetfsgid(cr);
 }
}
