
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_value; int zc_obj; int zc_name; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int objset_t ;


 int B_TRUE ;
 scalar_t__ DMU_OST_ZFS ;
 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int dmu_objset_hold_flags (int ,int ,int ,int **) ;
 int dmu_objset_rele_flags (int *,int ,int ) ;
 scalar_t__ dmu_objset_type (int *) ;
 int zfs_obj_to_path (int *,int ,int ,int) ;

__attribute__((used)) static int
zfs_ioc_obj_to_path(zfs_cmd_t *zc)
{
 objset_t *os;
 int error;


 if ((error = dmu_objset_hold_flags(zc->zc_name, B_TRUE,
     FTAG, &os)) != 0)
  return (error);
 if (dmu_objset_type(os) != DMU_OST_ZFS) {
  dmu_objset_rele_flags(os, B_TRUE, FTAG);
  return (SET_ERROR(EINVAL));
 }
 error = zfs_obj_to_path(os, zc->zc_obj, zc->zc_value,
     sizeof (zc->zc_value));
 dmu_objset_rele_flags(os, B_TRUE, FTAG);

 return (error);
}
