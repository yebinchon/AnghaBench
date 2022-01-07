
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_os; int z_version; int z_use_sa; int z_use_fuids; } ;
typedef TYPE_1__ zfsvfs_t ;


 int USE_FUIDS (int ,int ) ;
 int USE_SA (int ,int ) ;

__attribute__((used)) static void
zfs_set_fuid_feature(zfsvfs_t *zfsvfs)
{
 zfsvfs->z_use_fuids = USE_FUIDS(zfsvfs->z_version, zfsvfs->z_os);
 zfsvfs->z_use_sa = USE_SA(zfsvfs->z_version, zfsvfs->z_os);
}
