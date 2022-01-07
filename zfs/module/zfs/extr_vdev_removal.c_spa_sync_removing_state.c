
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int spa_removing_phys; TYPE_1__* spa_dsl_pool; } ;
typedef TYPE_2__ spa_t ;
typedef int dmu_tx_t ;
struct TYPE_4__ {int dp_meta_objset; } ;


 int DMU_POOL_DIRECTORY_OBJECT ;
 int DMU_POOL_REMOVING ;
 int VERIFY0 (int ) ;
 int zap_update (int ,int ,int ,int,int,int *,int *) ;

__attribute__((used)) static void
spa_sync_removing_state(spa_t *spa, dmu_tx_t *tx)
{
 VERIFY0(zap_update(spa->spa_dsl_pool->dp_meta_objset,
     DMU_POOL_DIRECTORY_OBJECT,
     DMU_POOL_REMOVING, sizeof (uint64_t),
     sizeof (spa->spa_removing_phys) / sizeof (uint64_t),
     &spa->spa_removing_phys, tx));
}
