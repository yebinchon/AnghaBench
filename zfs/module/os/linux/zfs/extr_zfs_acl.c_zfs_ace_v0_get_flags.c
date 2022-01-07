
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_flags; } ;
typedef TYPE_1__ zfs_oldace_t ;
typedef int uint16_t ;



__attribute__((used)) static uint16_t
zfs_ace_v0_get_flags(void *acep)
{
 return (((zfs_oldace_t *)acep)->z_flags);
}
