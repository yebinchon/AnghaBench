
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int nvpair_t ;
struct TYPE_9__ {int dpsa_props; int dpsa_dsname; } ;
typedef TYPE_3__ dsl_props_set_arg_t ;
typedef int dsl_pool_t ;
struct TYPE_10__ {scalar_t__ ds_is_snapshot; TYPE_2__* ds_dir; } ;
typedef TYPE_4__ dsl_dataset_t ;
typedef int dmu_tx_t ;
struct TYPE_8__ {TYPE_1__* dd_pool; } ;
struct TYPE_7__ {int dp_spa; } ;


 scalar_t__ DATA_TYPE_STRING ;
 int E2BIG ;
 int ENAMETOOLONG ;
 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_SNAP_PROPS ;
 scalar_t__ SPA_VERSION_STMF_PROP ;
 scalar_t__ ZAP_MAXNAMELEN ;
 scalar_t__ ZAP_MAXVALUELEN ;
 scalar_t__ ZAP_OLDMAXVALUELEN ;
 int * dmu_tx_pool (int *) ;
 int dsl_dataset_hold (int *,int ,int ,TYPE_4__**) ;
 int dsl_dataset_rele (TYPE_4__*,int ) ;
 char* fnvpair_value_string (int *) ;
 int * nvlist_next_nvpair (int ,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ nvpair_type (int *) ;
 scalar_t__ spa_version (int ) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
dsl_props_set_check(void *arg, dmu_tx_t *tx)
{
 dsl_props_set_arg_t *dpsa = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *ds;
 uint64_t version;
 nvpair_t *elem = ((void*)0);
 int err;

 err = dsl_dataset_hold(dp, dpsa->dpsa_dsname, FTAG, &ds);
 if (err != 0)
  return (err);

 version = spa_version(ds->ds_dir->dd_pool->dp_spa);
 while ((elem = nvlist_next_nvpair(dpsa->dpsa_props, elem)) != ((void*)0)) {
  if (strlen(nvpair_name(elem)) >= ZAP_MAXNAMELEN) {
   dsl_dataset_rele(ds, FTAG);
   return (SET_ERROR(ENAMETOOLONG));
  }
  if (nvpair_type(elem) == DATA_TYPE_STRING) {
   char *valstr = fnvpair_value_string(elem);
   if (strlen(valstr) >= (version <
       SPA_VERSION_STMF_PROP ?
       ZAP_OLDMAXVALUELEN : ZAP_MAXVALUELEN)) {
    dsl_dataset_rele(ds, FTAG);
    return (SET_ERROR(E2BIG));
   }
  }
 }

 if (ds->ds_is_snapshot && version < SPA_VERSION_SNAP_PROPS) {
  dsl_dataset_rele(ds, FTAG);
  return (SET_ERROR(ENOTSUP));
 }
 dsl_dataset_rele(ds, FTAG);
 return (0);
}
