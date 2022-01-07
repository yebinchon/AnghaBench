
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spa_root_vdev; int spa_label_features; } ;
typedef TYPE_1__ spa_t ;


 scalar_t__ nvlist_remove_all (int ,char const*) ;
 int vdev_config_dirty (int ) ;

void
spa_deactivate_mos_feature(spa_t *spa, const char *feature)
{
 if (nvlist_remove_all(spa->spa_label_features, feature) == 0)
  vdev_config_dirty(spa->spa_root_vdev);
}
