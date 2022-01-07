
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int objset_t ;
typedef int dsl_pool_t ;
struct TYPE_9__ {int dd_pool; } ;
typedef TYPE_1__ dsl_dir_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_10__ {int doca_cred; int doca_dcp; int doca_name; } ;
typedef TYPE_2__ dmu_objset_create_arg_t ;
struct TYPE_11__ {int dd_head_dataset_obj; } ;


 scalar_t__ DMU_OST_ZFS ;
 int EEXIST ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int ZFS_ERR_WRONG_PARENT ;
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ;
 int ZFS_PROP_FILESYSTEM_LIMIT ;
 scalar_t__ dataset_nestcheck (int ) ;
 int dmu_objset_create_crypt_check (TYPE_1__*,int ,int *) ;
 int dmu_objset_from_ds (int *,int **) ;
 scalar_t__ dmu_objset_type (int *) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold_obj (int ,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dir_hold (int *,int ,int ,TYPE_1__**,char const**) ;
 TYPE_5__* dsl_dir_phys (TYPE_1__*) ;
 int dsl_dir_rele (TYPE_1__*,int ) ;
 int dsl_fs_ss_limit_check (TYPE_1__*,int,int ,int *,int ) ;
 int * strchr (int ,char) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int
dmu_objset_create_check(void *arg, dmu_tx_t *tx)
{
 dmu_objset_create_arg_t *doca = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dir_t *pdd;
 dsl_dataset_t *parentds;
 objset_t *parentos;
 const char *tail;
 int error;

 if (strchr(doca->doca_name, '@') != ((void*)0))
  return (SET_ERROR(EINVAL));

 if (strlen(doca->doca_name) >= ZFS_MAX_DATASET_NAME_LEN)
  return (SET_ERROR(ENAMETOOLONG));

 if (dataset_nestcheck(doca->doca_name) != 0)
  return (SET_ERROR(ENAMETOOLONG));

 error = dsl_dir_hold(dp, doca->doca_name, FTAG, &pdd, &tail);
 if (error != 0)
  return (error);
 if (tail == ((void*)0)) {
  dsl_dir_rele(pdd, FTAG);
  return (SET_ERROR(EEXIST));
 }

 error = dmu_objset_create_crypt_check(pdd, doca->doca_dcp, ((void*)0));
 if (error != 0) {
  dsl_dir_rele(pdd, FTAG);
  return (error);
 }

 error = dsl_fs_ss_limit_check(pdd, 1, ZFS_PROP_FILESYSTEM_LIMIT, ((void*)0),
     doca->doca_cred);
 if (error != 0) {
  dsl_dir_rele(pdd, FTAG);
  return (error);
 }


 error = dsl_dataset_hold_obj(pdd->dd_pool,
     dsl_dir_phys(pdd)->dd_head_dataset_obj, FTAG, &parentds);
 if (error != 0) {
  dsl_dir_rele(pdd, FTAG);
  return (error);
 }
 error = dmu_objset_from_ds(parentds, &parentos);
 if (error != 0) {
  dsl_dataset_rele(parentds, FTAG);
  dsl_dir_rele(pdd, FTAG);
  return (error);
 }
 if (dmu_objset_type(parentos) != DMU_OST_ZFS) {
  dsl_dataset_rele(parentds, FTAG);
  dsl_dir_rele(pdd, FTAG);
  return (SET_ERROR(ZFS_ERR_WRONG_PARENT));
 }
 dsl_dataset_rele(parentds, FTAG);
 dsl_dir_rele(pdd, FTAG);

 return (error);
}
