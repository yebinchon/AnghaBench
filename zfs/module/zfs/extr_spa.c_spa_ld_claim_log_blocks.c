
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int spa_claiming; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_11__ {int dp_root_dir_obj; } ;
typedef TYPE_2__ dsl_pool_t ;
typedef int dmu_tx_t ;


 int B_FALSE ;
 int B_TRUE ;
 int DS_FIND_CHILDREN ;
 int SPA_LOG_GOOD ;
 int dmu_objset_find_dp (TYPE_2__*,int ,int ,int *,int ) ;
 int dmu_tx_commit (int *) ;
 int * dmu_tx_create_assigned (TYPE_2__*,int ) ;
 int spa_first_txg (TYPE_1__*) ;
 TYPE_2__* spa_get_dsl (TYPE_1__*) ;
 int spa_set_log_state (TYPE_1__*,int ) ;
 int zil_claim ;

__attribute__((used)) static void
spa_ld_claim_log_blocks(spa_t *spa)
{
 dmu_tx_t *tx;
 dsl_pool_t *dp = spa_get_dsl(spa);
 spa->spa_claiming = B_TRUE;

 tx = dmu_tx_create_assigned(dp, spa_first_txg(spa));
 (void) dmu_objset_find_dp(dp, dp->dp_root_dir_obj,
     zil_claim, tx, DS_FIND_CHILDREN);
 dmu_tx_commit(tx);

 spa->spa_claiming = B_FALSE;

 spa_set_log_state(spa, SPA_LOG_GOOD);
}
