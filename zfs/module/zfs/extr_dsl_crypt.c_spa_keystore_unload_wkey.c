
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int spa_dsl_pool; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_13__ {int dp_spa; } ;
typedef TYPE_2__ dsl_pool_t ;
struct TYPE_14__ {int dd_object; } ;
typedef TYPE_3__ dsl_dir_t ;


 int B_TRUE ;
 int ENOTSUP ;
 scalar_t__ FREAD ;
 int FTAG ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_ENCRYPTION ;
 int dsl_dir_hold (TYPE_2__*,char const*,int ,TYPE_3__**,int *) ;
 int dsl_dir_rele (TYPE_3__*,int ) ;
 int dsl_pool_hold (char const*,int ,TYPE_2__**) ;
 int dsl_pool_rele (TYPE_2__*,int ) ;
 int spa_close (TYPE_1__*,int ) ;
 int spa_feature_is_enabled (int ,int ) ;
 int spa_keystore_unload_wkey_impl (int ,int ) ;
 scalar_t__ spa_mode (TYPE_1__*) ;
 int spa_open (char const*,TYPE_1__**,int ) ;
 int txg_wait_synced (int ,int ) ;
 int zvol_remove_minors (int ,char const*,int ) ;

int
spa_keystore_unload_wkey(const char *dsname)
{
 int ret = 0;
 dsl_dir_t *dd = ((void*)0);
 dsl_pool_t *dp = ((void*)0);
 spa_t *spa = ((void*)0);

 ret = spa_open(dsname, &spa, FTAG);
 if (ret != 0)
  return (ret);





 if (spa_mode(spa) != FREAD)
  txg_wait_synced(spa->spa_dsl_pool, 0);

 spa_close(spa, FTAG);


 ret = dsl_pool_hold(dsname, FTAG, &dp);
 if (ret != 0)
  goto error;

 if (!spa_feature_is_enabled(dp->dp_spa, SPA_FEATURE_ENCRYPTION)) {
  ret = (SET_ERROR(ENOTSUP));
  goto error;
 }

 ret = dsl_dir_hold(dp, dsname, FTAG, &dd, ((void*)0));
 if (ret != 0) {
  dd = ((void*)0);
  goto error;
 }


 ret = spa_keystore_unload_wkey_impl(dp->dp_spa, dd->dd_object);
 if (ret != 0)
  goto error;

 dsl_dir_rele(dd, FTAG);
 dsl_pool_rele(dp, FTAG);


 zvol_remove_minors(dp->dp_spa, dsname, B_TRUE);

 return (0);

error:
 if (dd != ((void*)0))
  dsl_dir_rele(dd, FTAG);
 if (dp != ((void*)0))
  dsl_pool_rele(dp, FTAG);

 return (ret);
}
