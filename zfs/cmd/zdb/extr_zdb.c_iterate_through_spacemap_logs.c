
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int zdb_log_sm_cb_t ;
struct TYPE_13__ {void* uic_arg; int uic_cb; int uic_txg; TYPE_2__* uic_spa; } ;
typedef TYPE_1__ unflushed_iter_cb_arg_t ;
typedef int space_map_t ;
struct TYPE_14__ {int spa_sm_logs_by_txg; } ;
typedef TYPE_2__ spa_t ;
struct TYPE_15__ {int sls_txg; int sls_sm_obj; } ;
typedef TYPE_3__ spa_log_sm_t ;


 TYPE_3__* AVL_NEXT (int *,TYPE_3__*) ;
 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SPA_FEATURE_LOG_SPACEMAP ;
 int SPA_MINBLOCKSHIFT ;
 int UINT64_MAX ;
 int VERIFY0 (int ) ;
 TYPE_3__* avl_first (int *) ;
 int iterate_through_spacemap_logs_cb ;
 int spa_config_enter (TYPE_2__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_2__*,int ,int ) ;
 int spa_feature_is_active (TYPE_2__*,int ) ;
 int spa_meta_objset (TYPE_2__*) ;
 int space_map_close (int *) ;
 int space_map_iterate (int *,int ,int ,TYPE_1__*) ;
 int space_map_length (int *) ;
 int space_map_open (int **,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
iterate_through_spacemap_logs(spa_t *spa, zdb_log_sm_cb_t cb, void *arg)
{
 if (!spa_feature_is_active(spa, SPA_FEATURE_LOG_SPACEMAP))
  return;

 spa_config_enter(spa, SCL_CONFIG, FTAG, RW_READER);
 for (spa_log_sm_t *sls = avl_first(&spa->spa_sm_logs_by_txg);
     sls; sls = AVL_NEXT(&spa->spa_sm_logs_by_txg, sls)) {
  space_map_t *sm = ((void*)0);
  VERIFY0(space_map_open(&sm, spa_meta_objset(spa),
      sls->sls_sm_obj, 0, UINT64_MAX, SPA_MINBLOCKSHIFT));

  unflushed_iter_cb_arg_t uic = {
   .uic_spa = spa,
   .uic_txg = sls->sls_txg,
   .uic_arg = arg,
   .uic_cb = cb
  };

  VERIFY0(space_map_iterate(sm, space_map_length(sm),
      iterate_through_spacemap_logs_cb, &uic));
  space_map_close(sm);
 }
 spa_config_exit(spa, SCL_CONFIG, FTAG);
}
