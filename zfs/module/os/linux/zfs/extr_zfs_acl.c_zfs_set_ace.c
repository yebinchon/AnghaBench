
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* z_ops; } ;
typedef TYPE_2__ zfs_acl_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int (* ace_who_set ) (void*,int ) ;int (* ace_flags_set ) (void*,scalar_t__) ;int (* ace_type_set ) (void*,scalar_t__) ;int (* ace_mask_set ) (void*,int ) ;} ;


 scalar_t__ ACE_EVERYONE ;
 scalar_t__ ACE_OWNER ;
 scalar_t__ ACE_TYPE_FLAGS ;
 scalar_t__ OWNING_GROUP ;
 int stub1 (void*,int ) ;
 int stub2 (void*,scalar_t__) ;
 int stub3 (void*,scalar_t__) ;
 int stub4 (void*,int ) ;

__attribute__((used)) static void
zfs_set_ace(zfs_acl_t *aclp, void *acep, uint32_t access_mask,
    uint16_t access_type, uint64_t fuid, uint16_t entry_type)
{
 uint16_t type = entry_type & ACE_TYPE_FLAGS;

 aclp->z_ops->ace_mask_set(acep, access_mask);
 aclp->z_ops->ace_type_set(acep, access_type);
 aclp->z_ops->ace_flags_set(acep, entry_type);
 if ((type != ACE_OWNER && type != OWNING_GROUP &&
     type != ACE_EVERYONE))
  aclp->z_ops->ace_who_set(acep, fuid);
}
