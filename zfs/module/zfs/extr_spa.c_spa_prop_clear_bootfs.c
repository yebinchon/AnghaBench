
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ spa_bootfs; scalar_t__ spa_pool_props_object; int spa_meta_objset; } ;
typedef TYPE_1__ spa_t ;
typedef int dmu_tx_t ;


 int VERIFY (int) ;
 int ZPOOL_PROP_BOOTFS ;
 scalar_t__ zap_remove (int ,scalar_t__,int ,int *) ;
 int zpool_prop_to_name (int ) ;

void
spa_prop_clear_bootfs(spa_t *spa, uint64_t dsobj, dmu_tx_t *tx)
{
 if (spa->spa_bootfs == dsobj && spa->spa_pool_props_object != 0) {
  VERIFY(zap_remove(spa->spa_meta_objset,
      spa->spa_pool_props_object,
      zpool_prop_to_name(ZPOOL_PROP_BOOTFS), tx) == 0);
  spa->spa_bootfs = 0;
 }
}
