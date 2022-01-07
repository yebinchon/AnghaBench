
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int zs_mirrors; int zs_vdev_next_leaf; scalar_t__ zs_splits; } ;
typedef TYPE_1__ ztest_shared_t ;
struct TYPE_10__ {int zd_name; } ;
typedef TYPE_2__ ztest_ds_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;
struct TYPE_11__ {int mc_groups; } ;
typedef TYPE_3__ metaslab_class_t ;
struct TYPE_12__ {scalar_t__ zo_special_vdevs; int zo_raidz; int zo_verbose; int zo_vdev_size; } ;


 int B_FALSE ;
 int ENOSPC ;
 int FTAG ;
 int MAX (scalar_t__,int) ;
 int RW_READER ;
 int SCL_VDEV ;
 int SPA_FEATURE_ALLOCATION_CLASSES ;
 char* VDEV_ALLOC_BIAS_DEDUP ;
 char* VDEV_ALLOC_BIAS_SPECIAL ;
 int ZFS_PROP_SPECIAL_SMALL_BLOCKS ;
 scalar_t__ ZTEST_VDEV_CLASS_OFF ;
 scalar_t__ ZTEST_VDEV_CLASS_RND ;
 int fatal (int ,char*,int) ;
 int * make_vdev_root (int *,int *,int *,int ,int ,char const*,int,int,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int printf (char*,...) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;
 TYPE_3__* spa_dedup_class (int *) ;
 int spa_feature_is_enabled (int *,int ) ;
 int spa_num_top_vdevs (int *) ;
 TYPE_3__* spa_special_class (int *) ;
 int spa_vdev_add (int *,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int ztest_dsl_prop_set_uint64 (int ,int ,int,int ) ;
 TYPE_6__ ztest_opts ;
 scalar_t__ ztest_random (int) ;
 int ztest_record_enospc (char*) ;
 TYPE_1__* ztest_shared ;
 int * ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_vdev_class_add(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_t *zs = ztest_shared;
 spa_t *spa = ztest_spa;
 uint64_t leaves;
 nvlist_t *nvroot;
 const char *class = (ztest_random(2) == 0) ?
     VDEV_ALLOC_BIAS_SPECIAL : VDEV_ALLOC_BIAS_DEDUP;
 int error;




 if ((ztest_opts.zo_special_vdevs == ZTEST_VDEV_CLASS_OFF) ||
     (ztest_opts.zo_special_vdevs == ZTEST_VDEV_CLASS_RND &&
     ztest_random(2) == 0)) {
  return;
 }

 mutex_enter(&ztest_vdev_lock);


 if (zs->zs_mirrors < 2) {
  mutex_exit(&ztest_vdev_lock);
  return;
 }


 if (!spa_feature_is_enabled(spa, SPA_FEATURE_ALLOCATION_CLASSES)) {
  mutex_exit(&ztest_vdev_lock);
  return;
 }

 leaves = MAX(zs->zs_mirrors + zs->zs_splits, 1) * ztest_opts.zo_raidz;

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);
 ztest_shared->zs_vdev_next_leaf = spa_num_top_vdevs(spa) * leaves;
 spa_config_exit(spa, SCL_VDEV, FTAG);

 nvroot = make_vdev_root(((void*)0), ((void*)0), ((void*)0), ztest_opts.zo_vdev_size, 0,
     class, ztest_opts.zo_raidz, zs->zs_mirrors, 1);

 error = spa_vdev_add(spa, nvroot);
 nvlist_free(nvroot);

 if (error == ENOSPC)
  ztest_record_enospc("spa_vdev_add");
 else if (error != 0)
  fatal(0, "spa_vdev_add() = %d", error);




 if (error == 0 &&
     spa_special_class(spa)->mc_groups == 1 && ztest_random(2) == 0) {
  if (ztest_opts.zo_verbose >= 3)
   (void) printf("Enabling special VDEV small blocks\n");
  (void) ztest_dsl_prop_set_uint64(zd->zd_name,
      ZFS_PROP_SPECIAL_SMALL_BLOCKS, 32768, B_FALSE);
 }

 mutex_exit(&ztest_vdev_lock);

 if (ztest_opts.zo_verbose >= 3) {
  metaslab_class_t *mc;

  if (strcmp(class, VDEV_ALLOC_BIAS_SPECIAL) == 0)
   mc = spa_special_class(spa);
  else
   mc = spa_dedup_class(spa);
  (void) printf("Added a %s mirrored vdev (of %d)\n",
      class, (int)mc->mc_groups);
 }
}
