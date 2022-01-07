
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vdev_children; scalar_t__ vdev_ishole; struct TYPE_4__** vdev_child; } ;
typedef TYPE_1__ vdev_t ;
typedef size_t uint_t ;
typedef size_t uint64_t ;
struct TYPE_5__ {TYPE_1__* spa_root_vdev; } ;
typedef TYPE_2__ spa_t ;
typedef int nvlist_t ;


 int KM_SLEEP ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_HOLE_ARRAY ;
 int ZPOOL_CONFIG_VDEV_CHILDREN ;
 size_t* kmem_alloc (int,int ) ;
 int kmem_free (size_t*,int) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,size_t) ;
 scalar_t__ nvlist_add_uint64_array (int *,int ,size_t*,size_t) ;

void
vdev_top_config_generate(spa_t *spa, nvlist_t *config)
{
 vdev_t *rvd = spa->spa_root_vdev;
 uint64_t *array;
 uint_t c, idx;

 array = kmem_alloc(rvd->vdev_children * sizeof (uint64_t), KM_SLEEP);

 for (c = 0, idx = 0; c < rvd->vdev_children; c++) {
  vdev_t *tvd = rvd->vdev_child[c];

  if (tvd->vdev_ishole) {
   array[idx++] = c;
  }
 }

 if (idx) {
  VERIFY(nvlist_add_uint64_array(config, ZPOOL_CONFIG_HOLE_ARRAY,
      array, idx) == 0);
 }

 VERIFY(nvlist_add_uint64(config, ZPOOL_CONFIG_VDEV_CHILDREN,
     rvd->vdev_children) == 0);

 kmem_free(array, rvd->vdev_children * sizeof (uint64_t));
}
