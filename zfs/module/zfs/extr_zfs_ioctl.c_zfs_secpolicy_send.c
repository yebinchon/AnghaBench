
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int zc_name; int zc_sendobj; } ;
typedef TYPE_1__ zfs_cmd_t ;
typedef int nvlist_t ;
typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int cred_t ;


 int EINVAL ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZFS_DELEG_PERM_SEND ;
 int dsl_dataset_hold_obj (int *,int ,int ,int **) ;
 int dsl_dataset_name (int *,int ) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (int ,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 char* strchr (int ,char) ;
 int zfs_secpolicy_write_perms_ds (int ,int *,int ,int *) ;

__attribute__((used)) static int
zfs_secpolicy_send(zfs_cmd_t *zc, nvlist_t *innvl, cred_t *cr)
{
 dsl_pool_t *dp;
 dsl_dataset_t *ds;
 char *cp;
 int error;





 cp = strchr(zc->zc_name, '@');
 if (cp == ((void*)0))
  return (SET_ERROR(EINVAL));
 error = dsl_pool_hold(zc->zc_name, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold_obj(dp, zc->zc_sendobj, FTAG, &ds);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 dsl_dataset_name(ds, zc->zc_name);

 error = zfs_secpolicy_write_perms_ds(zc->zc_name, ds,
     ZFS_DELEG_PERM_SEND, cr);
 dsl_dataset_rele(ds, FTAG);
 dsl_pool_rele(dp, FTAG);

 return (error);
}
