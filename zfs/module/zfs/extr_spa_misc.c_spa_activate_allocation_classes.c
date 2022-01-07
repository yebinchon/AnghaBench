
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spa_t ;
typedef int dmu_tx_t ;


 int ASSERT (int ) ;
 int SPA_FEATURE_ALLOCATION_CLASSES ;
 int spa_feature_incr (int *,int ,int *) ;
 int spa_feature_is_enabled (int *,int ) ;

void
spa_activate_allocation_classes(spa_t *spa, dmu_tx_t *tx)
{



 ASSERT(spa_feature_is_enabled(spa, SPA_FEATURE_ALLOCATION_CLASSES));
 spa_feature_incr(spa, SPA_FEATURE_ALLOCATION_CLASSES, tx);
}
