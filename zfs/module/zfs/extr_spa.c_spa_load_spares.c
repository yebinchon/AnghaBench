
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;


struct TYPE_31__ {TYPE_1__* vdev_aux; struct TYPE_31__* vdev_top; scalar_t__ vdev_isspare; int vdev_guid; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint_t ;
struct TYPE_30__ {int sav_count; int * sav_config; TYPE_2__** sav_vdevs; } ;
struct TYPE_32__ {TYPE_1__ spa_spares; } ;
typedef TYPE_3__ spa_t ;
typedef TYPE_2__ nvlist_t ;


 int ASSERT (int) ;
 int B_FALSE ;
 int B_TRUE ;
 int DATA_TYPE_NVLIST_ARRAY ;
 int KM_SLEEP ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 int VDEV_ALLOC_SPARE ;
 int VDEV_CONFIG_SPARE ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_SPARES ;
 TYPE_2__** kmem_alloc (int,int ) ;
 int kmem_free (TYPE_2__**,int) ;
 TYPE_2__** kmem_zalloc (int,int ) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,TYPE_2__**,int) ;
 int nvlist_free (TYPE_2__*) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,TYPE_2__***,int*) ;
 scalar_t__ nvlist_remove (int *,int ,int ) ;
 scalar_t__ spa_config_held (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ spa_config_parse (TYPE_3__*,TYPE_2__**,TYPE_2__*,int *,int ,int ) ;
 TYPE_2__* spa_lookup_by_guid (TYPE_3__*,int ,int ) ;
 int spa_spare_activate (TYPE_2__*) ;
 int spa_spare_add (TYPE_2__*) ;
 int spa_spare_remove (TYPE_2__*) ;
 int spa_writeable (TYPE_3__*) ;
 int vdev_close (TYPE_2__*) ;
 TYPE_2__* vdev_config_generate (TYPE_3__*,TYPE_2__*,int ,int ) ;
 int vdev_free (TYPE_2__*) ;
 int vdev_is_dead (TYPE_2__*) ;
 scalar_t__ vdev_open (TYPE_2__*) ;
 scalar_t__ vdev_validate_aux (TYPE_2__*) ;

void
spa_load_spares(spa_t *spa)
{
 nvlist_t **spares;
 uint_t nspares;
 int i;
 vdev_t *vd, *tvd;
 if (!spa_writeable(spa))
  return;


 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);




 for (i = 0; i < spa->spa_spares.sav_count; i++) {
  vd = spa->spa_spares.sav_vdevs[i];


  if ((tvd = spa_lookup_by_guid(spa, vd->vdev_guid,
      B_FALSE)) != ((void*)0) && tvd->vdev_isspare)
   spa_spare_remove(tvd);
  vdev_close(vd);
  vdev_free(vd);
 }

 if (spa->spa_spares.sav_vdevs)
  kmem_free(spa->spa_spares.sav_vdevs,
      spa->spa_spares.sav_count * sizeof (void *));

 if (spa->spa_spares.sav_config == ((void*)0))
  nspares = 0;
 else
  VERIFY(nvlist_lookup_nvlist_array(spa->spa_spares.sav_config,
      ZPOOL_CONFIG_SPARES, &spares, &nspares) == 0);

 spa->spa_spares.sav_count = (int)nspares;
 spa->spa_spares.sav_vdevs = ((void*)0);

 if (nspares == 0)
  return;
 spa->spa_spares.sav_vdevs = kmem_zalloc(nspares * sizeof (void *),
     KM_SLEEP);
 for (i = 0; i < spa->spa_spares.sav_count; i++) {
  VERIFY(spa_config_parse(spa, &vd, spares[i], ((void*)0), 0,
      VDEV_ALLOC_SPARE) == 0);
  ASSERT(vd != ((void*)0));

  spa->spa_spares.sav_vdevs[i] = vd;

  if ((tvd = spa_lookup_by_guid(spa, vd->vdev_guid,
      B_FALSE)) != ((void*)0)) {
   if (!tvd->vdev_isspare)
    spa_spare_add(tvd);
   if (!vdev_is_dead(tvd))
    spa_spare_activate(tvd);
  }

  vd->vdev_top = vd;
  vd->vdev_aux = &spa->spa_spares;

  if (vdev_open(vd) != 0)
   continue;

  if (vdev_validate_aux(vd) == 0)
   spa_spare_add(vd);
 }





 VERIFY(nvlist_remove(spa->spa_spares.sav_config, ZPOOL_CONFIG_SPARES,
     DATA_TYPE_NVLIST_ARRAY) == 0);

 spares = kmem_alloc(spa->spa_spares.sav_count * sizeof (void *),
     KM_SLEEP);
 for (i = 0; i < spa->spa_spares.sav_count; i++)
  spares[i] = vdev_config_generate(spa,
      spa->spa_spares.sav_vdevs[i], B_TRUE, VDEV_CONFIG_SPARE);
 VERIFY(nvlist_add_nvlist_array(spa->spa_spares.sav_config,
     ZPOOL_CONFIG_SPARES, spares, spa->spa_spares.sav_count) == 0);
 for (i = 0; i < spa->spa_spares.sav_count; i++)
  nvlist_free(spares[i]);
 kmem_free(spares, spa->spa_spares.sav_count * sizeof (void *));
}
