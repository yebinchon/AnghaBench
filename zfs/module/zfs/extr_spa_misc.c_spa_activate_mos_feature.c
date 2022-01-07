
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int spa_root_vdev; int spa_label_features; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_6__ {scalar_t__ tx_txg; } ;
typedef TYPE_2__ dmu_tx_t ;


 scalar_t__ TXG_INITIAL ;
 int fnvlist_add_boolean (int ,char const*) ;
 int nvlist_exists (int ,char const*) ;
 int vdev_config_dirty (int ) ;

void
spa_activate_mos_feature(spa_t *spa, const char *feature, dmu_tx_t *tx)
{
 if (!nvlist_exists(spa->spa_label_features, feature)) {
  fnvlist_add_boolean(spa->spa_label_features, feature);







  if (tx->tx_txg != TXG_INITIAL)
   vdev_config_dirty(spa->spa_root_vdev);
 }
}
