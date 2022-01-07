
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int zs_mirrors; int zs_splits; } ;
typedef TYPE_1__ ztest_shared_t ;
typedef int ztest_ds_t ;
struct TYPE_13__ {int vdev_children; int * vdev_ops; scalar_t__ vdev_islog; struct TYPE_13__** vdev_child; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint_t ;
typedef int uint64_t ;
struct TYPE_14__ {int spa_props_lock; int spa_config; TYPE_2__* spa_root_vdev; } ;
typedef TYPE_3__ spa_t ;
typedef int nvlist_t ;
struct TYPE_15__ {int zo_raidz; scalar_t__ zo_mmp_test; } ;


 int B_FALSE ;
 int FTAG ;
 int NV_UNIQUE_NAME ;
 int RW_READER ;
 int SCL_VDEV ;
 int VDEV_TYPE_HOLE ;
 int VDEV_TYPE_ROOT ;
 int VERIFY (int) ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_HOLE ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int free (int **) ;
 int ** malloc (int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,size_t) ;
 scalar_t__ nvlist_add_string (int *,int ,int ) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int ,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,size_t*) ;
 int printf (char*) ;
 int pthread_rwlock_unlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;
 int show_pool_stats (TYPE_3__*) ;
 int spa_config_enter (TYPE_3__*,int ,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int ,int ) ;
 int spa_destroy (char*) ;
 TYPE_3__* spa_lookup (char*) ;
 int spa_namespace_lock ;
 int spa_vdev_split_mirror (TYPE_3__*,char*,int *,int *,int ) ;
 int vdev_hole_ops ;
 int ztest_name_lock ;
 TYPE_6__ ztest_opts ;
 TYPE_1__* ztest_shared ;
 TYPE_3__* ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_split_pool(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_t *zs = ztest_shared;
 spa_t *spa = ztest_spa;
 vdev_t *rvd = spa->spa_root_vdev;
 nvlist_t *tree, **child, *config, *split, **schild;
 uint_t c, children, schildren = 0, lastlogid = 0;
 int error = 0;

 if (ztest_opts.zo_mmp_test)
  return;

 mutex_enter(&ztest_vdev_lock);


 if (zs->zs_mirrors < 3 || ztest_opts.zo_raidz > 1) {
  mutex_exit(&ztest_vdev_lock);
  return;
 }


 (void) spa_destroy("splitp");

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);


 mutex_enter(&spa->spa_props_lock);
 VERIFY(nvlist_lookup_nvlist(spa->spa_config, ZPOOL_CONFIG_VDEV_TREE,
     &tree) == 0);
 mutex_exit(&spa->spa_props_lock);

 VERIFY(nvlist_lookup_nvlist_array(tree, ZPOOL_CONFIG_CHILDREN, &child,
     &children) == 0);

 schild = malloc(rvd->vdev_children * sizeof (nvlist_t *));
 for (c = 0; c < children; c++) {
  vdev_t *tvd = rvd->vdev_child[c];
  nvlist_t **mchild;
  uint_t mchildren;

  if (tvd->vdev_islog || tvd->vdev_ops == &vdev_hole_ops) {
   VERIFY(nvlist_alloc(&schild[schildren], NV_UNIQUE_NAME,
       0) == 0);
   VERIFY(nvlist_add_string(schild[schildren],
       ZPOOL_CONFIG_TYPE, VDEV_TYPE_HOLE) == 0);
   VERIFY(nvlist_add_uint64(schild[schildren],
       ZPOOL_CONFIG_IS_HOLE, 1) == 0);
   if (lastlogid == 0)
    lastlogid = schildren;
   ++schildren;
   continue;
  }
  lastlogid = 0;
  VERIFY(nvlist_lookup_nvlist_array(child[c],
      ZPOOL_CONFIG_CHILDREN, &mchild, &mchildren) == 0);
  VERIFY(nvlist_dup(mchild[0], &schild[schildren++], 0) == 0);
 }


 VERIFY(nvlist_alloc(&split, NV_UNIQUE_NAME, 0) == 0);
 VERIFY(nvlist_add_string(split, ZPOOL_CONFIG_TYPE,
     VDEV_TYPE_ROOT) == 0);
 VERIFY(nvlist_add_nvlist_array(split, ZPOOL_CONFIG_CHILDREN, schild,
     lastlogid != 0 ? lastlogid : schildren) == 0);

 VERIFY(nvlist_alloc(&config, NV_UNIQUE_NAME, 0) == 0);
 VERIFY(nvlist_add_nvlist(config, ZPOOL_CONFIG_VDEV_TREE, split) == 0);

 for (c = 0; c < schildren; c++)
  nvlist_free(schild[c]);
 free(schild);
 nvlist_free(split);

 spa_config_exit(spa, SCL_VDEV, FTAG);

 (void) pthread_rwlock_wrlock(&ztest_name_lock);
 error = spa_vdev_split_mirror(spa, "splitp", config, ((void*)0), B_FALSE);
 (void) pthread_rwlock_unlock(&ztest_name_lock);

 nvlist_free(config);

 if (error == 0) {
  (void) printf("successful split - results:\n");
  mutex_enter(&spa_namespace_lock);
  show_pool_stats(spa);
  show_pool_stats(spa_lookup("splitp"));
  mutex_exit(&spa_namespace_lock);
  ++zs->zs_splits;
  --zs->zs_mirrors;
 }
 mutex_exit(&ztest_vdev_lock);
}
