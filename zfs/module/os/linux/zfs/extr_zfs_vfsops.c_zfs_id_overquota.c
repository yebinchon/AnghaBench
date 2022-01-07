
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfsvfs_t ;
typedef int uint64_t ;
typedef int boolean_t ;


 scalar_t__ zfs_id_overblockquota (int *,int ,int ) ;
 scalar_t__ zfs_id_overobjquota (int *,int ,int ) ;

boolean_t
zfs_id_overquota(zfsvfs_t *zfsvfs, uint64_t usedobj, uint64_t id)
{
 return (zfs_id_overblockquota(zfsvfs, usedobj, id) ||
     zfs_id_overobjquota(zfsvfs, usedobj, id));
}
