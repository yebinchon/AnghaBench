
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_longlong_t ;
typedef int space_map_t ;
struct TYPE_9__ {int spa_meta_objset; int spa_sm_logs_by_txg; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_10__ {scalar_t__ sls_txg; scalar_t__ sls_sm_obj; } ;
typedef TYPE_2__ spa_log_sm_t ;


 TYPE_2__* AVL_NEXT (int *,TYPE_2__*) ;
 int SPA_FEATURE_LOG_SPACEMAP ;
 int SPA_MINBLOCKSHIFT ;
 int UINT64_MAX ;
 int VERIFY0 (int ) ;
 TYPE_2__* avl_first (int *) ;
 int dump_spacemap (int ,int *) ;
 int printf (char*,...) ;
 int spa_feature_is_active (TYPE_1__*,int ) ;
 int spa_meta_objset (TYPE_1__*) ;
 int space_map_close (int *) ;
 int space_map_open (int **,int ,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void
dump_log_spacemaps(spa_t *spa)
{
 if (!spa_feature_is_active(spa, SPA_FEATURE_LOG_SPACEMAP))
  return;

 (void) printf("\nLog Space Maps in Pool:\n");
 for (spa_log_sm_t *sls = avl_first(&spa->spa_sm_logs_by_txg);
     sls; sls = AVL_NEXT(&spa->spa_sm_logs_by_txg, sls)) {
  space_map_t *sm = ((void*)0);
  VERIFY0(space_map_open(&sm, spa_meta_objset(spa),
      sls->sls_sm_obj, 0, UINT64_MAX, SPA_MINBLOCKSHIFT));

  (void) printf("Log Spacemap object %llu txg %llu\n",
      (u_longlong_t)sls->sls_sm_obj, (u_longlong_t)sls->sls_txg);
  dump_spacemap(spa->spa_meta_objset, sm);
  space_map_close(sm);
 }
 (void) printf("\n");
}
