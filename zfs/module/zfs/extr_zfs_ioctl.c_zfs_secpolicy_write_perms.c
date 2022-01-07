
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dsl_pool_t ;
typedef int dsl_dataset_t ;
typedef int cred_t ;


 int FTAG ;
 scalar_t__ INGLOBALZONE (int ) ;
 int curproc ;
 int dsl_dataset_hold (int *,char const*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_pool_hold (char const*,int ,int **) ;
 int dsl_pool_rele (int *,int ) ;
 scalar_t__ secpolicy_zfs (int *) ;
 int zfs_secpolicy_write_perms_ds (char const*,int *,char const*,int *) ;

__attribute__((used)) static int
zfs_secpolicy_write_perms(const char *name, const char *perm, cred_t *cr)
{
 int error;
 dsl_dataset_t *ds;
 dsl_pool_t *dp;






 if (INGLOBALZONE(curproc) && secpolicy_zfs(cr) == 0)
  return (0);

 error = dsl_pool_hold(name, FTAG, &dp);
 if (error != 0)
  return (error);

 error = dsl_dataset_hold(dp, name, FTAG, &ds);
 if (error != 0) {
  dsl_pool_rele(dp, FTAG);
  return (error);
 }

 error = zfs_secpolicy_write_perms_ds(name, ds, perm, cr);

 dsl_dataset_rele(ds, FTAG);
 dsl_pool_rele(dp, FTAG);
 return (error);
}
