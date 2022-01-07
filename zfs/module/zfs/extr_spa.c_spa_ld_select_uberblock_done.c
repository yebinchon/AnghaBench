
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ub_software_version; } ;
typedef TYPE_1__ uberblock_t ;
struct TYPE_7__ {int spa_verify_min_txg; int spa_first_txg; int spa_last_ubsync_txg; int spa_claim_max_txg; int spa_prev_software_version; scalar_t__ spa_extreme_rewind; int spa_uberblock; int spa_ubsync; int spa_state; } ;
typedef TYPE_2__ spa_t ;


 int POOL_STATE_ACTIVE ;
 int TXG_DEFER_SIZE ;
 int TXG_INITIAL ;
 int spa_last_synced_txg (TYPE_2__*) ;

__attribute__((used)) static void
spa_ld_select_uberblock_done(spa_t *spa, uberblock_t *ub)
{
 spa->spa_state = POOL_STATE_ACTIVE;
 spa->spa_ubsync = spa->spa_uberblock;
 spa->spa_verify_min_txg = spa->spa_extreme_rewind ?
     TXG_INITIAL - 1 : spa_last_synced_txg(spa) - TXG_DEFER_SIZE - 1;
 spa->spa_first_txg = spa->spa_last_ubsync_txg ?
     spa->spa_last_ubsync_txg : spa_last_synced_txg(spa) + 1;
 spa->spa_claim_max_txg = spa->spa_first_txg;
 spa->spa_prev_software_version = ub->ub_software_version;
}
