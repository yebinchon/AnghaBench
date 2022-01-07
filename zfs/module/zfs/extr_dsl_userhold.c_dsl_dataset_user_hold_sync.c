
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_5__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {scalar_t__ dduha_minor; int dduha_chkholds; } ;
typedef TYPE_2__ dsl_dataset_user_hold_arg_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int FTAG ;
 int VERIFY0 (int ) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_user_hold_sync_one_impl (int *,int *,int ,scalar_t__,int ,int *) ;
 int dsl_onexit_hold_cleanup (int ,int *,scalar_t__) ;
 int * fnvlist_alloc () ;
 int fnvpair_value_string (int *) ;
 int gethrestime_sec () ;
 int * nvlist_next_nvpair (int ,int *) ;
 int nvpair_name (int *) ;

__attribute__((used)) static void
dsl_dataset_user_hold_sync(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_user_hold_arg_t *dduha = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 nvlist_t *tmpholds;
 uint64_t now = gethrestime_sec();

 if (dduha->dduha_minor != 0)
  tmpholds = fnvlist_alloc();
 else
  tmpholds = ((void*)0);
 for (nvpair_t *pair = nvlist_next_nvpair(dduha->dduha_chkholds, ((void*)0));
     pair != ((void*)0);
     pair = nvlist_next_nvpair(dduha->dduha_chkholds, pair)) {
  dsl_dataset_t *ds;

  VERIFY0(dsl_dataset_hold(dp, nvpair_name(pair), FTAG, &ds));
  dsl_dataset_user_hold_sync_one_impl(tmpholds, ds,
      fnvpair_value_string(pair), dduha->dduha_minor, now, tx);
  dsl_dataset_rele(ds, FTAG);
 }
 dsl_onexit_hold_cleanup(dp->dp_spa, tmpholds, dduha->dduha_minor);
}
