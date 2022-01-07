
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zfsvfs_t ;
struct TYPE_3__ {int zc_cookie; int zc_guid; int zc_value; int zc_objset_type; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int B_FALSE ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZFS_NUM_USERQUOTA_PROPS ;
 int zfs_userspace_one (int *,int ,int ,int ,int *) ;
 int zfsvfs_hold (int ,int ,int **,int ) ;
 int zfsvfs_rele (int *,int ) ;

__attribute__((used)) static int
zfs_ioc_userspace_one(zfs_cmd_t *zc)
{
 zfsvfs_t *zfsvfs;
 int error;

 if (zc->zc_objset_type >= ZFS_NUM_USERQUOTA_PROPS)
  return (SET_ERROR(EINVAL));

 error = zfsvfs_hold(zc->zc_name, FTAG, &zfsvfs, B_FALSE);
 if (error != 0)
  return (error);

 error = zfs_userspace_one(zfsvfs,
     zc->zc_objset_type, zc->zc_value, zc->zc_guid, &zc->zc_cookie);
 zfsvfs_rele(zfsvfs, FTAG);

 return (error);
}
