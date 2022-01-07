
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dsl_pool_t ;
typedef int dsl_dir_t ;
struct TYPE_5__ {int ds_is_snapshot; } ;
typedef TYPE_1__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {int doca_origin; int doca_cred; int doca_clone; } ;
typedef TYPE_2__ dmu_objset_clone_arg_t ;


 int EDQUOT ;
 int EEXIST ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_FILESYSTEM_LIMIT ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_1__**) ;
 int dsl_dataset_rele (TYPE_1__*,int ) ;
 int dsl_dir_hold (int *,int ,int ,int **,char const**) ;
 int dsl_dir_rele (int *,int ) ;
 int dsl_fs_ss_limit_check (int *,int,int ,int *,int ) ;
 int * strchr (int ,char) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
dmu_objset_clone_check(void *arg, dmu_tx_t *tx)
{
 dmu_objset_clone_arg_t *doca = arg;
 dsl_dir_t *pdd;
 const char *tail;
 int error;
 dsl_dataset_t *origin;
 dsl_pool_t *dp = dmu_tx_pool(tx);

 if (strchr(doca->doca_clone, '@') != ((void*)0))
  return (SET_ERROR(EINVAL));

 if (strlen(doca->doca_clone) >= ZFS_MAX_DATASET_NAME_LEN)
  return (SET_ERROR(ENAMETOOLONG));

 error = dsl_dir_hold(dp, doca->doca_clone, FTAG, &pdd, &tail);
 if (error != 0)
  return (error);
 if (tail == ((void*)0)) {
  dsl_dir_rele(pdd, FTAG);
  return (SET_ERROR(EEXIST));
 }

 error = dsl_fs_ss_limit_check(pdd, 1, ZFS_PROP_FILESYSTEM_LIMIT, ((void*)0),
     doca->doca_cred);
 if (error != 0) {
  dsl_dir_rele(pdd, FTAG);
  return (SET_ERROR(EDQUOT));
 }

 error = dsl_dataset_hold(dp, doca->doca_origin, FTAG, &origin);
 if (error != 0) {
  dsl_dir_rele(pdd, FTAG);
  return (error);
 }


 if (!origin->ds_is_snapshot) {
  dsl_dataset_rele(origin, FTAG);
  dsl_dir_rele(pdd, FTAG);
  return (SET_ERROR(EINVAL));
 }

 dsl_dataset_rele(origin, FTAG);
 dsl_dir_rele(pdd, FTAG);

 return (0);
}
