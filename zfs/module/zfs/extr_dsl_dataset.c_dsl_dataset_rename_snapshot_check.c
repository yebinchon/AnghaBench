
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int dsl_pool_t ;
struct TYPE_12__ {TYPE_1__* ds_dir; } ;
typedef TYPE_2__ dsl_dataset_t ;
struct TYPE_13__ {scalar_t__ ddrsa_recursive; int ddrsa_fsname; } ;
typedef TYPE_3__ dsl_dataset_rename_snapshot_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_11__ {int dd_object; } ;


 int DS_FIND_CHILDREN ;
 int FTAG ;
 int dmu_objset_find_dp (int *,int ,int (*) (int *,TYPE_2__*,TYPE_3__*),TYPE_3__*,int ) ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_2__**) ;
 int dsl_dataset_rele (TYPE_2__*,int ) ;
 int dsl_dataset_rename_snapshot_check_impl (int *,TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int
dsl_dataset_rename_snapshot_check(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_rename_snapshot_arg_t *ddrsa = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *hds;
 int error;

 error = dsl_dataset_hold(dp, ddrsa->ddrsa_fsname, FTAG, &hds);
 if (error != 0)
  return (error);

 if (ddrsa->ddrsa_recursive) {
  error = dmu_objset_find_dp(dp, hds->ds_dir->dd_object,
      dsl_dataset_rename_snapshot_check_impl, ddrsa,
      DS_FIND_CHILDREN);
 } else {
  error = dsl_dataset_rename_snapshot_check_impl(dp, hds, ddrsa);
 }
 dsl_dataset_rele(hds, FTAG);
 return (error);
}
