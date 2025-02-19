
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_4__ {int z_inherit_type; int z_object_type; } ;
typedef TYPE_1__ zfs_object_ace_t ;
typedef int zfs_acl_t ;
typedef int zfs_ace_hdr_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ uid_t ;
typedef scalar_t__ int64_t ;
typedef int cred_t ;
typedef scalar_t__ caddr_t ;
struct TYPE_5__ {int a_flags; int a_type; int a_access_mask; scalar_t__ a_who; } ;
typedef TYPE_2__ ace_t ;
struct TYPE_6__ {int a_inherit_obj_type; int a_obj_type; } ;
typedef TYPE_3__ ace_object_t ;




 int ACE_EVERYONE ;
 int ACE_IDENTIFIER_GROUP ;
 int ACE_OWNER ;


 int ACE_TYPE_FLAGS ;
 int OWNING_GROUP ;
 int ZFS_ACE_GROUP ;
 int ZFS_ACE_USER ;
 int bcopy (int ,int ,int) ;
 int * zfs_acl_next_ace (int *,int *,scalar_t__*,int *,int*,int*) ;
 scalar_t__ zfs_fuid_map_id (int *,scalar_t__,int *,int ) ;

__attribute__((used)) static void
zfs_copy_fuid_2_ace(zfsvfs_t *zfsvfs, zfs_acl_t *aclp, cred_t *cr,
    void *datap, int filter)
{
 uint64_t who;
 uint32_t access_mask;
 uint16_t iflags, type;
 zfs_ace_hdr_t *zacep = ((void*)0);
 ace_t *acep = datap;
 ace_object_t *objacep;
 zfs_object_ace_t *zobjacep;
 size_t ace_size;
 uint16_t entry_type;

 while ((zacep = zfs_acl_next_ace(aclp, zacep,
     &who, &access_mask, &iflags, &type))) {

  switch (type) {
  case 131:
  case 130:
  case 128:
  case 129:
   if (filter) {
    continue;
   }
   zobjacep = (zfs_object_ace_t *)zacep;
   objacep = (ace_object_t *)acep;
   bcopy(zobjacep->z_object_type,
       objacep->a_obj_type,
       sizeof (zobjacep->z_object_type));
   bcopy(zobjacep->z_inherit_type,
       objacep->a_inherit_obj_type,
       sizeof (zobjacep->z_inherit_type));
   ace_size = sizeof (ace_object_t);
   break;
  default:
   ace_size = sizeof (ace_t);
   break;
  }

  entry_type = (iflags & ACE_TYPE_FLAGS);
  if ((entry_type != ACE_OWNER &&
      entry_type != OWNING_GROUP &&
      entry_type != ACE_EVERYONE)) {
   acep->a_who = zfs_fuid_map_id(zfsvfs, who,
       cr, (entry_type & ACE_IDENTIFIER_GROUP) ?
       ZFS_ACE_GROUP : ZFS_ACE_USER);
  } else {
   acep->a_who = (uid_t)(int64_t)who;
  }
  acep->a_access_mask = access_mask;
  acep->a_flags = iflags;
  acep->a_type = type;
  acep = (ace_t *)((caddr_t)acep + ace_size);
 }
}
