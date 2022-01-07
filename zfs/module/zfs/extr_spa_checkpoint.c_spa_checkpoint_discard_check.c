
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ spa_checkpoint_txg; } ;
typedef TYPE_1__ spa_t ;
typedef int dmu_tx_t ;
struct TYPE_6__ {TYPE_1__* dp_spa; } ;


 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_ZPOOL_CHECKPOINT ;
 int SET_ERROR (int ) ;
 int SPA_FEATURE_POOL_CHECKPOINT ;
 int VERIFY0 (int ) ;
 int ZFS_ERR_DISCARDING_CHECKPOINT ;
 int ZFS_ERR_NO_CHECKPOINT ;
 TYPE_4__* dmu_tx_pool (int *) ;
 int spa_feature_is_active (TYPE_1__*,int ) ;
 int spa_meta_objset (TYPE_1__*) ;
 int zap_contains (int ,int ,int ) ;

__attribute__((used)) static int
spa_checkpoint_discard_check(void *arg, dmu_tx_t *tx)
{
 spa_t *spa = dmu_tx_pool(tx)->dp_spa;

 if (!spa_feature_is_active(spa, SPA_FEATURE_POOL_CHECKPOINT))
  return (SET_ERROR(ZFS_ERR_NO_CHECKPOINT));

 if (spa->spa_checkpoint_txg == 0)
  return (SET_ERROR(ZFS_ERR_DISCARDING_CHECKPOINT));

 VERIFY0(zap_contains(spa_meta_objset(spa),
     DMU_POOL_DIRECTORY_OBJECT, DMU_POOL_ZPOOL_CHECKPOINT));

 return (0);
}
