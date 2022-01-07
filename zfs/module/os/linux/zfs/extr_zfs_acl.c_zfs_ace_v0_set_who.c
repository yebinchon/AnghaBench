
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int z_fuid; } ;
typedef TYPE_1__ zfs_oldace_t ;
typedef int uint64_t ;



__attribute__((used)) static void
zfs_ace_v0_set_who(void *acep, uint64_t who)
{
 ((zfs_oldace_t *)acep)->z_fuid = who;
}
