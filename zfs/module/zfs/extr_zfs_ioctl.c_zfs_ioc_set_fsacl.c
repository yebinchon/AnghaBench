
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_perm_action; int zc_name; int zc_iflags; int zc_nvlist_src_size; int zc_nvlist_src; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;


 int B_FALSE ;
 int CRED () ;
 int EINVAL ;
 int SET_ERROR (int ) ;
 int dsl_deleg_can_allow (int ,int *,int ) ;
 int dsl_deleg_can_unallow (int ,int *,int ) ;
 int dsl_deleg_set (int ,int *,int ) ;
 int get_nvlist (int ,int ,int ,int **) ;
 int nvlist_free (int *) ;
 int secpolicy_zfs (int ) ;
 int zfs_deleg_verify_nvlist (int *) ;

__attribute__((used)) static int
zfs_ioc_set_fsacl(zfs_cmd_t *zc)
{
 int error;
 nvlist_t *fsaclnv = ((void*)0);

 if ((error = get_nvlist(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
     zc->zc_iflags, &fsaclnv)) != 0)
  return (error);




 if ((error = zfs_deleg_verify_nvlist(fsaclnv)) != 0) {
  nvlist_free(fsaclnv);
  return (SET_ERROR(EINVAL));
 }







 error = secpolicy_zfs(CRED());
 if (error != 0) {
  if (zc->zc_perm_action == B_FALSE) {
   error = dsl_deleg_can_allow(zc->zc_name,
       fsaclnv, CRED());
  } else {
   error = dsl_deleg_can_unallow(zc->zc_name,
       fsaclnv, CRED());
  }
 }

 if (error == 0)
  error = dsl_deleg_set(zc->zc_name, fsaclnv, zc->zc_perm_action);

 nvlist_free(fsaclnv);
 return (error);
}
