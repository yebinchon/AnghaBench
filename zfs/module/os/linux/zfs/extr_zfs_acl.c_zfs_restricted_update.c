
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ z_acl_inherit; } ;
typedef TYPE_2__ zfsvfs_t ;
struct TYPE_8__ {TYPE_1__* z_ops; } ;
typedef TYPE_3__ zfs_acl_t ;
typedef int uint32_t ;
struct TYPE_6__ {scalar_t__ (* ace_type_get ) (void*) ;int (* ace_mask_set ) (void*,int ) ;int (* ace_mask_get ) (void*) ;} ;


 scalar_t__ ALLOW ;
 int RESTRICTED_CLEAR ;
 scalar_t__ ZFS_ACL_RESTRICTED ;
 int stub1 (void*) ;
 scalar_t__ stub2 (void*) ;
 int stub3 (void*,int ) ;

__attribute__((used)) static void
zfs_restricted_update(zfsvfs_t *zfsvfs, zfs_acl_t *aclp, void *acep)
{
 uint32_t mask = aclp->z_ops->ace_mask_get(acep);

 if ((zfsvfs->z_acl_inherit == ZFS_ACL_RESTRICTED) &&
     (aclp->z_ops->ace_type_get(acep) == ALLOW)) {
  mask &= ~RESTRICTED_CLEAR;
  aclp->z_ops->ace_mask_set(acep, mask);
 }
}
