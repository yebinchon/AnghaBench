
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* spa_dsl_pool; } ;
typedef TYPE_2__ spa_t ;
typedef int boolean_t ;
struct TYPE_4__ {int dp_early_sync_tasks; int dp_sync_tasks; } ;


 int txg_all_lists_empty (int *) ;

boolean_t
spa_has_pending_synctask(spa_t *spa)
{
 return (!txg_all_lists_empty(&spa->spa_dsl_pool->dp_sync_tasks) ||
     !txg_all_lists_empty(&spa->spa_dsl_pool->dp_early_sync_tasks));
}
