
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ vdev_guid; } ;
typedef TYPE_2__ vdev_t ;
typedef int vdev_stat_t ;
typedef scalar_t__ uint_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_8__ {scalar_t__ sav_count; TYPE_2__** sav_vdevs; int * sav_config; } ;
struct TYPE_10__ {TYPE_1__ spa_l2cache; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;


 int ASSERT (int ) ;
 int RW_READER ;
 int SCL_CONFIG ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_GUID ;
 int ZPOOL_CONFIG_L2CACHE ;
 int ZPOOL_CONFIG_VDEV_STATS ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,scalar_t__) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,scalar_t__*) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 scalar_t__ nvlist_lookup_uint64_array (int *,int ,scalar_t__**,scalar_t__*) ;
 int spa_config_held (TYPE_3__*,int ,int ) ;
 int vdev_config_generate_stats (TYPE_2__*,int *) ;
 int vdev_get_stats (TYPE_2__*,int *) ;

__attribute__((used)) static void
spa_add_l2cache(spa_t *spa, nvlist_t *config)
{
 nvlist_t **l2cache;
 uint_t i, j, nl2cache;
 nvlist_t *nvroot;
 uint64_t guid;
 vdev_t *vd;
 vdev_stat_t *vs;
 uint_t vsc;

 ASSERT(spa_config_held(spa, SCL_CONFIG, RW_READER));

 if (spa->spa_l2cache.sav_count == 0)
  return;

 VERIFY(nvlist_lookup_nvlist(config,
     ZPOOL_CONFIG_VDEV_TREE, &nvroot) == 0);
 VERIFY(nvlist_lookup_nvlist_array(spa->spa_l2cache.sav_config,
     ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0);
 if (nl2cache != 0) {
  VERIFY(nvlist_add_nvlist_array(nvroot,
      ZPOOL_CONFIG_L2CACHE, l2cache, nl2cache) == 0);
  VERIFY(nvlist_lookup_nvlist_array(nvroot,
      ZPOOL_CONFIG_L2CACHE, &l2cache, &nl2cache) == 0);





  for (i = 0; i < nl2cache; i++) {
   VERIFY(nvlist_lookup_uint64(l2cache[i],
       ZPOOL_CONFIG_GUID, &guid) == 0);

   vd = ((void*)0);
   for (j = 0; j < spa->spa_l2cache.sav_count; j++) {
    if (guid ==
        spa->spa_l2cache.sav_vdevs[j]->vdev_guid) {
     vd = spa->spa_l2cache.sav_vdevs[j];
     break;
    }
   }
   ASSERT(vd != ((void*)0));

   VERIFY(nvlist_lookup_uint64_array(l2cache[i],
       ZPOOL_CONFIG_VDEV_STATS, (uint64_t **)&vs, &vsc)
       == 0);
   vdev_get_stats(vd, vs);
   vdev_config_generate_stats(vd, l2cache[i]);

  }
 }
}
