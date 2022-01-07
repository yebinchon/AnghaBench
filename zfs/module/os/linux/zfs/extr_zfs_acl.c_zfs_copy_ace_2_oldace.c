
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int z_flags; int z_type; int z_fuid; int z_access_mask; } ;
typedef TYPE_1__ zfs_oldace_t ;
typedef int zfs_acl_t ;
typedef int umode_t ;
typedef size_t caddr_t ;
struct TYPE_6__ {int a_who; int a_flags; int a_type; int a_access_mask; } ;
typedef TYPE_2__ ace_t ;


 scalar_t__ B_TRUE ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 scalar_t__ zfs_ace_valid (int ,int *,int ,int ) ;

__attribute__((used)) static int
zfs_copy_ace_2_oldace(umode_t obj_mode, zfs_acl_t *aclp, ace_t *acep,
    zfs_oldace_t *z_acl, int aclcnt, size_t *size)
{
 int i;
 zfs_oldace_t *aceptr = z_acl;

 for (i = 0; i != aclcnt; i++, aceptr++) {
  aceptr->z_access_mask = acep[i].a_access_mask;
  aceptr->z_type = acep[i].a_type;
  aceptr->z_flags = acep[i].a_flags;
  aceptr->z_fuid = acep[i].a_who;



  if (zfs_ace_valid(obj_mode, aclp, aceptr->z_type,
      aceptr->z_flags) != B_TRUE)
   return (SET_ERROR(EINVAL));
 }
 *size = (caddr_t)aceptr - (caddr_t)z_acl;
 return (0);
}
