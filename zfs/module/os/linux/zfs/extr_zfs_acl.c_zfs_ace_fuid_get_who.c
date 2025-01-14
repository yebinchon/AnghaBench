
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_flags; } ;
struct TYPE_4__ {int z_fuid; TYPE_1__ z_hdr; } ;
typedef TYPE_2__ zfs_ace_t ;
typedef int uint64_t ;
typedef int uint16_t ;


 int ACE_EVERYONE ;
 int ACE_OWNER ;
 int ACE_TYPE_FLAGS ;
 int OWNING_GROUP ;

__attribute__((used)) static uint64_t
zfs_ace_fuid_get_who(void *args)
{
 uint16_t entry_type;
 zfs_ace_t *acep = args;

 entry_type = acep->z_hdr.z_flags & ACE_TYPE_FLAGS;

 if (entry_type == ACE_OWNER || entry_type == OWNING_GROUP ||
     entry_type == ACE_EVERYONE)
  return (-1);
 return (((zfs_ace_t *)acep)->z_fuid);
}
