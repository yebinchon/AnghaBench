
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int spa_checkpoint_discard_zthr; scalar_t__ spa_checkpoint_txg; } ;
typedef TYPE_1__ spa_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {TYPE_1__* dp_spa; } ;


 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_ZPOOL_CHECKPOINT ;
 int VERIFY0 (int ) ;
 TYPE_4__* dmu_tx_pool (int *) ;
 int spa_history_log_internal (TYPE_1__*,char*,int *,char*) ;
 int spa_meta_objset (TYPE_1__*) ;
 int zap_remove (int ,int ,int ,int *) ;
 int zthr_wakeup (int ) ;

__attribute__((used)) static void
spa_checkpoint_discard_sync(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;

 VERIFY0(zap_remove(spa_meta_objset(spa), DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_ZPOOL_CHECKPOINT, tx));

 spa->spa_checkpoint_txg = 0;

 zthr_wakeup(spa->spa_checkpoint_discard_zthr);

 spa_history_log_internal(spa, "spa discard checkpoint", tx,
     "started discarding checkpointed state from the pool");
}
