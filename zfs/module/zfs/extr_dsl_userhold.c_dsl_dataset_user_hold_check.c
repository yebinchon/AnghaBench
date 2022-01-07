
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int nvpair_t ;
typedef int nvlist_t ;
struct TYPE_5__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {scalar_t__ dduha_minor; int dduha_errlist; int * dduha_chkholds; int * dduha_holds; } ;
typedef TYPE_2__ dsl_dataset_user_hold_arg_t ;
typedef int dsl_dataset_t ;
typedef int dmu_tx_t ;


 int EEXIST ;
 int EINVAL ;
 int ENOENT ;
 int ENOTSUP ;
 int FTAG ;
 int KM_SLEEP ;
 int SET_ERROR (int ) ;
 scalar_t__ SPA_VERSION_USERREFS ;
 int dmu_tx_is_syncing (int *) ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_dataset_hold (TYPE_1__*,char*,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int dsl_dataset_user_hold_check_one (int *,char*,int,int *) ;
 int fnvlist_add_int32 (int ,char*,int) ;
 int fnvlist_add_string (int *,char*,char*) ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 size_t fnvlist_num_pairs (int *) ;
 char* fnvpair_value_string (int *) ;
 int kmem_free (char*,size_t) ;
 char* kmem_zalloc (size_t,int ) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 int nvpair_value_string (int *,char**) ;
 scalar_t__ spa_version (int ) ;
 int strcat (char*,char*) ;
 int * strchr (char*,char) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static int
dsl_dataset_user_hold_check(void *arg, dmu_tx_t *tx)
{
 dsl_dataset_user_hold_arg_t *dduha = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 nvlist_t *tmp_holds;

 if (spa_version(dp->dp_spa) < SPA_VERSION_USERREFS)
  return (SET_ERROR(ENOTSUP));

 if (!dmu_tx_is_syncing(tx))
  return (0);





 tmp_holds = fnvlist_alloc();
 for (nvpair_t *pair = nvlist_next_nvpair(dduha->dduha_holds, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(dduha->dduha_holds, pair)) {
  size_t len = strlen(nvpair_name(pair)) +
      strlen(fnvpair_value_string(pair));
  char *nameval = kmem_zalloc(len + 2, KM_SLEEP);
  (void) strcpy(nameval, nvpair_name(pair));
  (void) strcat(nameval, "@");
  (void) strcat(nameval, fnvpair_value_string(pair));
  fnvlist_add_string(tmp_holds, nameval, "");
  kmem_free(nameval, len + 2);
 }
 size_t tmp_count = fnvlist_num_pairs(tmp_holds);
 fnvlist_free(tmp_holds);
 if (tmp_count != fnvlist_num_pairs(dduha->dduha_holds))
  return (SET_ERROR(EEXIST));
 for (nvpair_t *pair = nvlist_next_nvpair(dduha->dduha_holds, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(dduha->dduha_holds, pair)) {
  dsl_dataset_t *ds;
  int error = 0;
  char *htag, *name;


  name = nvpair_name(pair);
  if (strchr(name, '@') == ((void*)0))
   error = SET_ERROR(EINVAL);

  if (error == 0)
   error = nvpair_value_string(pair, &htag);

  if (error == 0)
   error = dsl_dataset_hold(dp, name, FTAG, &ds);

  if (error == 0) {
   error = dsl_dataset_user_hold_check_one(ds, htag,
       dduha->dduha_minor != 0, tx);
   dsl_dataset_rele(ds, FTAG);
  }

  if (error == 0) {
   fnvlist_add_string(dduha->dduha_chkholds, name, htag);
  } else {




   fnvlist_add_int32(dduha->dduha_errlist, name, error);
   if (error != ENOENT)
    return (error);
  }
 }

 return (0);
}
