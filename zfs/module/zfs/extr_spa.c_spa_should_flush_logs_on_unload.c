
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spa_sync_on; } ;
typedef TYPE_1__ spa_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ POOL_STATE_EXPORTED ;
 int SPA_FEATURE_LOG_SPACEMAP ;
 int spa_feature_is_active (TYPE_1__*,int ) ;
 scalar_t__ spa_state (TYPE_1__*) ;
 int spa_writeable (TYPE_1__*) ;
 scalar_t__ zfs_keep_log_spacemaps_at_export ;

__attribute__((used)) static boolean_t
spa_should_flush_logs_on_unload(spa_t *spa)
{
 if (!spa_feature_is_active(spa, SPA_FEATURE_LOG_SPACEMAP))
  return (B_FALSE);

 if (!spa_writeable(spa))
  return (B_FALSE);

 if (!spa->spa_sync_on)
  return (B_FALSE);

 if (spa_state(spa) != POOL_STATE_EXPORTED)
  return (B_FALSE);

 if (zfs_keep_log_spacemaps_at_export)
  return (B_FALSE);

 return (B_TRUE);
}
