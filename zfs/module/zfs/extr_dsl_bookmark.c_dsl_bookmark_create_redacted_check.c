
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int redaction_list_phys_t ;
struct TYPE_5__ {int dp_spa; } ;
typedef TYPE_1__ dsl_pool_t ;
typedef int dsl_dataset_t ;
struct TYPE_6__ {int dbcra_numsnaps; int dbcra_bmark; int dbcra_snap; } ;
typedef TYPE_2__ dsl_bookmark_create_redacted_arg_t ;
typedef int dmu_tx_t ;


 int E2BIG ;
 int ENOTSUP ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_REDACTION_BOOKMARKS ;
 int dmu_bonus_max () ;
 TYPE_1__* dmu_tx_pool (int *) ;
 int dsl_bookmark_create_check_impl (int *,int ,int *) ;
 int dsl_dataset_hold (TYPE_1__*,int ,int ,int **) ;
 int dsl_dataset_rele (int *,int ) ;
 int spa_feature_is_enabled (int ,int ) ;

__attribute__((used)) static int
dsl_bookmark_create_redacted_check(void *arg, dmu_tx_t *tx)
{
 dsl_bookmark_create_redacted_arg_t *dbcra = arg;
 dsl_pool_t *dp = dmu_tx_pool(tx);
 dsl_dataset_t *snapds;
 int rv = 0;

 if (!spa_feature_is_enabled(dp->dp_spa,
     SPA_FEATURE_REDACTION_BOOKMARKS))
  return (SET_ERROR(ENOTSUP));




 if (dbcra->dbcra_numsnaps > (dmu_bonus_max() -
     sizeof (redaction_list_phys_t)) / sizeof (uint64_t))
  return (SET_ERROR(E2BIG));

 rv = dsl_dataset_hold(dp, dbcra->dbcra_snap,
     FTAG, &snapds);
 if (rv == 0) {
  rv = dsl_bookmark_create_check_impl(snapds, dbcra->dbcra_bmark,
      tx);
  dsl_dataset_rele(snapds, FTAG);
 }
 return (rv);
}
