
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ z_is_sa; int z_xattr_lock; } ;
typedef TYPE_1__ znode_t ;
struct TYPE_7__ {scalar_t__ z_use_sa; } ;
typedef TYPE_2__ zfsvfs_t ;
struct inode {int dummy; } ;
typedef int cred_t ;


 int ASSERT (int*) ;
 int CE_WARN ;
 int ENODATA ;
 int ENOENT ;
 TYPE_1__* ITOZ (struct inode*) ;
 int* RW_LOCK_HELD (int *) ;
 int XATTR_IN_DIR ;
 int XATTR_IN_SA ;
 int XATTR_NOENT ;
 TYPE_2__* ZTOZSB (TYPE_1__*) ;
 int cmn_err (int ,char*,struct inode*,char const*) ;
 int zpl_xattr_get_dir (struct inode*,char const*,int *,int ,int *) ;
 int zpl_xattr_get_sa (struct inode*,char const*,int *,int ) ;

__attribute__((used)) static int
__zpl_xattr_where(struct inode *ip, const char *name, int *where, cred_t *cr)
{
 znode_t *zp = ITOZ(ip);
 zfsvfs_t *zfsvfs = ZTOZSB(zp);
 int error;

 ASSERT(where);
 ASSERT(RW_LOCK_HELD(&zp->z_xattr_lock));

 *where = XATTR_NOENT;
 if (zfsvfs->z_use_sa && zp->z_is_sa) {
  error = zpl_xattr_get_sa(ip, name, ((void*)0), 0);
  if (error >= 0)
   *where |= XATTR_IN_SA;
  else if (error != -ENOENT)
   return (error);
 }

 error = zpl_xattr_get_dir(ip, name, ((void*)0), 0, cr);
 if (error >= 0)
  *where |= XATTR_IN_DIR;
 else if (error != -ENOENT)
  return (error);

 if (*where == (XATTR_IN_SA|XATTR_IN_DIR))
  cmn_err(CE_WARN, "ZFS: inode %p has xattr \"%s\""
      " in both SA and dir", ip, name);
 if (*where == XATTR_NOENT)
  error = -ENODATA;
 else
  error = 0;
 return (error);
}
