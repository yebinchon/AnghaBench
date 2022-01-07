
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int spa_dsl_pool; int spa_root_vdev; } ;
typedef TYPE_1__ spa_t ;
typedef scalar_t__ pool_scan_func_t ;


 int ASSERT (int) ;
 int ENOTSUP ;
 scalar_t__ POOL_SCAN_FUNCS ;
 scalar_t__ POOL_SCAN_NONE ;
 scalar_t__ POOL_SCAN_RESILVER ;
 int RW_WRITER ;
 int SCL_ALL ;
 int SET_ERROR (int ) ;
 int SPA_ASYNC_RESILVER_DONE ;
 int SPA_FEATURE_RESILVER_DEFER ;
 int dsl_scan (int ,scalar_t__) ;
 int spa_async_request (TYPE_1__*,int ) ;
 scalar_t__ spa_config_held (TYPE_1__*,int ,int ) ;
 int spa_feature_is_enabled (TYPE_1__*,int ) ;
 int vdev_resilver_needed (int ,int *,int *) ;

int
spa_scan(spa_t *spa, pool_scan_func_t func)
{
 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == 0);

 if (func >= POOL_SCAN_FUNCS || func == POOL_SCAN_NONE)
  return (SET_ERROR(ENOTSUP));

 if (func == POOL_SCAN_RESILVER &&
     !spa_feature_is_enabled(spa, SPA_FEATURE_RESILVER_DEFER))
  return (SET_ERROR(ENOTSUP));





 if (func == POOL_SCAN_RESILVER &&
     !vdev_resilver_needed(spa->spa_root_vdev, ((void*)0), ((void*)0))) {
  spa_async_request(spa, SPA_ASYNC_RESILVER_DONE);
  return (0);
 }

 return (dsl_scan(spa->spa_dsl_pool, func));
}
