
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int vs_aux; int vs_state; } ;
typedef TYPE_2__ vdev_stat_t ;
typedef scalar_t__ uint_t ;
typedef unsigned long long uint64_t ;
struct TYPE_6__ {scalar_t__ sav_count; int * sav_config; } ;
struct TYPE_8__ {TYPE_1__ spa_spares; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;


 int ASSERT (int ) ;
 int RW_READER ;
 int SCL_CONFIG ;
 int VDEV_AUX_SPARED ;
 int VDEV_STATE_CANT_OPEN ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_SPARES ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,scalar_t__) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,scalar_t__*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,unsigned long long*) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,unsigned long long**,scalar_t__*) ;
 int spa_config_held (TYPE_3__*,int ,int ) ;
 scalar_t__ spa_spare_exists (unsigned long long,unsigned long long*,int *) ;

__attribute__((used)) static void
spa_add_spares(spa_t *spa, nvlist_t *config)
{
 nvlist_t **spares;
 uint_t i, nspares;
 nvlist_t *nvroot;
 uint64_t guid;
 vdev_stat_t *vs;
 uint_t vsc;
 uint64_t pool;

 ASSERT(spa_config_held(spa, SCL_CONFIG, RW_READER));

 if (spa->spa_spares.sav_count == 0)
  return;

 VERIFY(nvlist_lookup_nvlist(config,
     ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
 VERIFY(nvlist_lookup_nvlist_array(spa->spa_spares.sav_config,
     ZPOOL_CONFIG_SPARES, &spares, &nspares) == 0);
 if (nspares != 0) {
  VERIFY(nvlist_add_nvlist_array(nvroot,
      ZPOOL_CONFIG_SPARES, spares, nspares) == 0);
  VERIFY(nvlist_lookup_nvlist_array(nvroot,
      ZPOOL_CONFIG_SPARES, &spares, &nspares) == 0);






  for (i = 0; i < nspares; i++) {
   VERIFY(nvlist_lookup_uint64(spares[i],
       ZPOOL_CONFIG_GUID, &guid) == 0);
   if (spa_spare_exists(guid, &pool, ((void*)0)) &&
       pool != 0ULL) {
    VERIFY(nvlist_lookup_uint64_array(
        spares[i], ZPOOL_CONFIG_VDEV_STATS,
        (uint64_t **)&vs, &vsc) == 0);
    vs->vs_state = VDEV_STATE_CANT_OPEN;
    vs->vs_aux = VDEV_AUX_SPARED;
   }
  }
 }
}
