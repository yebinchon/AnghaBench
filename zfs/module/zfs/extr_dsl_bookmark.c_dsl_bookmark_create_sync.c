
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvpair_t ;
struct TYPE_3__ {int dbca_bmarks; } ;
typedef TYPE_1__ dsl_bookmark_create_arg_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {int dp_spa; } ;


 int ASSERT (int ) ;
 int SPA_FEATURE_BOOKMARKS ;
 TYPE_2__* dmu_tx_pool (int *) ;
 int dsl_bookmark_create_sync_impl (int ,int ,int *,int ,int *,int *,int *) ;
 int fnvpair_value_string (int *) ;
 int * nvlist_next_nvpair (int ,int *) ;
 int nvpair_name (int *) ;
 int spa_feature_is_enabled (int ,int ) ;

__attribute__((used)) static void
dsl_bookmark_create_sync(void *arg, dmu_tx_t *tx)
{
 dsl_bookmark_create_arg_t *dbca = arg;

 ASSERT(spa_feature_is_enabled(dmu_tx_pool(tx)->dp_spa,
     SPA_FEATURE_BOOKMARKS));

 for (nvpair_t *pair = nvlist_next_nvpair(dbca->dbca_bmarks, ((void*)0));
     pair != ((void*)0); pair = nvlist_next_nvpair(dbca->dbca_bmarks, pair)) {
  dsl_bookmark_create_sync_impl(nvpair_name(pair),
      fnvpair_value_string(pair), tx, 0, ((void*)0), ((void*)0), ((void*)0));
 }
}
