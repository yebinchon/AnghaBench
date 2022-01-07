
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int z_projectobjquota_obj; int z_projectquota_obj; int z_groupobjquota_obj; int z_userobjquota_obj; int z_groupquota_obj; int z_userquota_obj; } ;
typedef TYPE_1__ zfsvfs_t ;
typedef int zfs_userquota_prop_t ;
typedef int uint64_t ;


 int DMU_GROUPUSED_OBJECT ;
 int DMU_PROJECTUSED_OBJECT ;
 int DMU_USERUSED_OBJECT ;
 int ZFS_NO_OBJECT ;
__attribute__((used)) static uint64_t
zfs_userquota_prop_to_obj(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type)
{
 switch (type) {
 case 128:
 case 130:
  return (DMU_USERUSED_OBJECT);
 case 136:
 case 138:
  return (DMU_GROUPUSED_OBJECT);
 case 132:
 case 134:
  return (DMU_PROJECTUSED_OBJECT);
 case 129:
  return (zfsvfs->z_userquota_obj);
 case 137:
  return (zfsvfs->z_groupquota_obj);
 case 131:
  return (zfsvfs->z_userobjquota_obj);
 case 139:
  return (zfsvfs->z_groupobjquota_obj);
 case 133:
  return (zfsvfs->z_projectquota_obj);
 case 135:
  return (zfsvfs->z_projectobjquota_obj);
 default:
  return (ZFS_NO_OBJECT);
 }
}
