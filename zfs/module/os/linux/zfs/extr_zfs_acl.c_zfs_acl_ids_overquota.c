
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_3__ {scalar_t__ z_fuid; scalar_t__ z_fgid; } ;
typedef TYPE_1__ zfs_acl_ids_t ;
typedef scalar_t__ uint64_t ;
typedef int boolean_t ;


 int DMU_GROUPUSED_OBJECT ;
 int DMU_PROJECTUSED_OBJECT ;
 int DMU_USERUSED_OBJECT ;
 scalar_t__ ZFS_DEFAULT_PROJID ;
 scalar_t__ ZFS_INVALID_PROJID ;
 scalar_t__ zfs_id_overquota (int *,int ,scalar_t__) ;

boolean_t
zfs_acl_ids_overquota(zfsvfs_t *zv, zfs_acl_ids_t *acl_ids, uint64_t projid)
{
 return (zfs_id_overquota(zv, DMU_USERUSED_OBJECT, acl_ids->z_fuid) ||
     zfs_id_overquota(zv, DMU_GROUPUSED_OBJECT, acl_ids->z_fgid) ||
     (projid != ZFS_DEFAULT_PROJID && projid != ZFS_INVALID_PROJID &&
     zfs_id_overquota(zv, DMU_PROJECTUSED_OBJECT, projid)));
}
