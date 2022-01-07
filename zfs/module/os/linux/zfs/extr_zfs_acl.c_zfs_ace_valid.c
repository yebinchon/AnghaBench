
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_hints; int z_version; } ;
typedef TYPE_1__ zfs_acl_t ;
typedef int umode_t ;
typedef int uint16_t ;
typedef int boolean_t ;




 int ACE_DIRECTORY_INHERIT_ACE ;
 int ACE_FILE_INHERIT_ACE ;
 int ACE_INHERIT_ONLY_ACE ;
 int ACE_NO_PROPAGATE_INHERIT_ACE ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ S_ISDIR (int ) ;
 int ZFS_ACL_OBJ_ACE ;
 int ZFS_ACL_VERSION_FUID ;
 int ZFS_INHERIT_ACE ;
 int zfs_acl_valid_ace_type (int,int) ;

__attribute__((used)) static boolean_t
zfs_ace_valid(umode_t obj_mode, zfs_acl_t *aclp, uint16_t type, uint16_t iflags)
{




 if (!zfs_acl_valid_ace_type(type, iflags))
  return (B_FALSE);

 switch (type) {
 case 131:
 case 130:
 case 128:
 case 129:
  if (aclp->z_version < ZFS_ACL_VERSION_FUID)
   return (B_FALSE);
  aclp->z_hints |= ZFS_ACL_OBJ_ACE;
 }





 if (S_ISDIR(obj_mode) &&
     (iflags & (ACE_FILE_INHERIT_ACE|ACE_DIRECTORY_INHERIT_ACE)))
  aclp->z_hints |= ZFS_INHERIT_ACE;

 if (iflags & (ACE_INHERIT_ONLY_ACE|ACE_NO_PROPAGATE_INHERIT_ACE)) {
  if ((iflags & (ACE_FILE_INHERIT_ACE|
      ACE_DIRECTORY_INHERIT_ACE)) == 0) {
   return (B_FALSE);
  }
 }

 return (B_TRUE);
}
