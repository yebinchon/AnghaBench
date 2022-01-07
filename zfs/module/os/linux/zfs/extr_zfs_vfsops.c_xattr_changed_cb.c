
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_xattr_sa; int z_flags; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef scalar_t__ uint64_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ ZFS_XATTR_OFF ;
 scalar_t__ ZFS_XATTR_SA ;
 int ZSB_XATTR ;

__attribute__((used)) static void
xattr_changed_cb(void *arg, uint64_t newval)
{
 zfsvfs_t *zfsvfs = arg;

 if (newval == ZFS_XATTR_OFF) {
  zfsvfs->z_flags &= ~ZSB_XATTR;
 } else {
  zfsvfs->z_flags |= ZSB_XATTR;

  if (newval == ZFS_XATTR_SA)
   zfsvfs->z_xattr_sa = B_TRUE;
  else
   zfsvfs->z_xattr_sa = B_FALSE;
 }
}
