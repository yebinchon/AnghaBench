
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_14__ {int z_inherit_type; int z_object_type; } ;
typedef TYPE_3__ zfs_object_ace_t ;
typedef int zfs_fuid_info_t ;
struct TYPE_15__ {TYPE_2__* z_ops; } ;
typedef TYPE_4__ zfs_acl_t ;
struct TYPE_12__ {int z_flags; int z_type; int z_access_mask; } ;
struct TYPE_16__ {TYPE_1__ z_hdr; int z_fuid; } ;
typedef TYPE_5__ zfs_ace_t ;
typedef int umode_t ;
typedef int uint64_t ;
typedef int uint16_t ;
typedef int cred_t ;
typedef size_t caddr_t ;
struct TYPE_17__ {int a_flags; int a_type; int a_who; int a_access_mask; } ;
typedef TYPE_6__ ace_t ;
struct TYPE_18__ {int a_inherit_obj_type; int a_obj_type; } ;
typedef TYPE_7__ ace_object_t ;
struct TYPE_13__ {size_t (* ace_size ) (TYPE_5__*) ;} ;




 int ACE_EVERYONE ;
 int ACE_OWNER ;


 int ACE_TYPE_FLAGS ;
 scalar_t__ B_TRUE ;
 int EINVAL ;
 int OWNING_GROUP ;
 int SET_ERROR (int ) ;
 int ZFS_ACE_GROUP ;
 int ZFS_ACE_USER ;
 int bcopy (int ,int ,int) ;
 size_t stub1 (TYPE_5__*) ;
 scalar_t__ zfs_ace_valid (int ,TYPE_4__*,int,int) ;
 int zfs_fuid_create (int *,int ,int *,int ,int **) ;

int
zfs_copy_ace_2_fuid(zfsvfs_t *zfsvfs, umode_t obj_mode, zfs_acl_t *aclp,
    void *datap, zfs_ace_t *z_acl, uint64_t aclcnt, size_t *size,
    zfs_fuid_info_t **fuidp, cred_t *cr)
{
 int i;
 uint16_t entry_type;
 zfs_ace_t *aceptr = z_acl;
 ace_t *acep = datap;
 zfs_object_ace_t *zobjacep;
 ace_object_t *aceobjp;

 for (i = 0; i != aclcnt; i++) {
  aceptr->z_hdr.z_access_mask = acep->a_access_mask;
  aceptr->z_hdr.z_flags = acep->a_flags;
  aceptr->z_hdr.z_type = acep->a_type;
  entry_type = aceptr->z_hdr.z_flags & ACE_TYPE_FLAGS;
  if (entry_type != ACE_OWNER && entry_type != OWNING_GROUP &&
      entry_type != ACE_EVERYONE) {
   aceptr->z_fuid = zfs_fuid_create(zfsvfs, acep->a_who,
       cr, (entry_type == 0) ?
       ZFS_ACE_USER : ZFS_ACE_GROUP, fuidp);
  }




  if (zfs_ace_valid(obj_mode, aclp, aceptr->z_hdr.z_type,
      aceptr->z_hdr.z_flags) != B_TRUE)
   return (SET_ERROR(EINVAL));

  switch (acep->a_type) {
  case 131:
  case 130:
  case 128:
  case 129:
   zobjacep = (zfs_object_ace_t *)aceptr;
   aceobjp = (ace_object_t *)acep;

   bcopy(aceobjp->a_obj_type, zobjacep->z_object_type,
       sizeof (aceobjp->a_obj_type));
   bcopy(aceobjp->a_inherit_obj_type,
       zobjacep->z_inherit_type,
       sizeof (aceobjp->a_inherit_obj_type));
   acep = (ace_t *)((caddr_t)acep + sizeof (ace_object_t));
   break;
  default:
   acep = (ace_t *)((caddr_t)acep + sizeof (ace_t));
  }

  aceptr = (zfs_ace_t *)((caddr_t)aceptr +
      aclp->z_ops->ace_size(aceptr));
 }

 *size = (caddr_t)aceptr - (caddr_t)z_acl;

 return (0);
}
