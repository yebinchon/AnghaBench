
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spa_feat_stats_lock; int * spa_feat_stats; } ;
typedef TYPE_1__ spa_t ;
typedef int nvlist_t ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int RW_READER ;
 int SCL_CONFIG ;
 int VERIFY0 (int ) ;
 int ZPOOL_CONFIG_FEATURE_STATS ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_add_nvlist (int *,int ,int *) ;
 int nvlist_alloc (int **,int ,int ) ;
 int spa_config_held (TYPE_1__*,int ,int ) ;
 int spa_feature_stats_from_cache (TYPE_1__*,int *) ;
 int spa_feature_stats_from_disk (TYPE_1__*,int *) ;

__attribute__((used)) static void
spa_add_feature_stats(spa_t *spa, nvlist_t *config)
{
 nvlist_t *features;

 ASSERT(spa_config_held(spa, SCL_CONFIG, RW_READER));

 mutex_enter(&spa->spa_feat_stats_lock);
 features = spa->spa_feat_stats;

 if (features != ((void*)0)) {
  spa_feature_stats_from_cache(spa, features);
 } else {
  VERIFY0(nvlist_alloc(&features, NV_UNIQUE_NAME, KM_SLEEP));
  spa->spa_feat_stats = features;
  spa_feature_stats_from_disk(spa, features);
 }

 VERIFY0(nvlist_add_nvlist(config, ZPOOL_CONFIG_FEATURE_STATS,
     features));

 mutex_exit(&spa->spa_feat_stats_lock);
}
