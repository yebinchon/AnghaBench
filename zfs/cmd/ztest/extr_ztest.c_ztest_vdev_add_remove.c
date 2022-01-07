
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int zs_vdev_next_leaf; scalar_t__ zs_mirrors; scalar_t__ zs_splits; } ;
typedef TYPE_2__ ztest_shared_t ;
typedef int ztest_ds_t ;
typedef int uint64_t ;
typedef int spa_t ;
typedef int nvlist_t ;
struct TYPE_9__ {TYPE_1__* mg_vd; struct TYPE_9__* mg_next; } ;
typedef TYPE_3__ metaslab_group_t ;
struct TYPE_11__ {TYPE_3__* mc_rotor; } ;
struct TYPE_10__ {int zo_raidz; int zo_vdev_size; scalar_t__ zo_mmp_test; } ;
struct TYPE_7__ {int vdev_guid; int vdev_islog; } ;


 int B_FALSE ;




 int FTAG ;
 int MAX (scalar_t__,int) ;
 int RW_READER ;
 int SCL_VDEV ;


 int fatal (int ,char*,int) ;
 int * make_vdev_root (int *,int *,int *,int ,int ,char*,int,scalar_t__,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int nvlist_free (int *) ;
 int pthread_rwlock_unlock (int *) ;
 int pthread_rwlock_wrlock (int *) ;
 int spa_config_enter (int *,int ,int ,int ) ;
 int spa_config_exit (int *,int ,int ) ;
 scalar_t__ spa_has_slogs (int *) ;
 TYPE_6__* spa_log_class (int *) ;
 int spa_num_top_vdevs (int *) ;
 int spa_vdev_add (int *,int *) ;
 int spa_vdev_remove (int *,int,int ) ;
 int ztest_name_lock ;
 TYPE_5__ ztest_opts ;
 scalar_t__ ztest_random (int) ;
 int ztest_record_enospc (char*) ;
 TYPE_2__* ztest_shared ;
 int * ztest_spa ;
 int ztest_vdev_lock ;

void
ztest_vdev_add_remove(ztest_ds_t *zd, uint64_t id)
{
 ztest_shared_t *zs = ztest_shared;
 spa_t *spa = ztest_spa;
 uint64_t leaves;
 uint64_t guid;
 nvlist_t *nvroot;
 int error;

 if (ztest_opts.zo_mmp_test)
  return;

 mutex_enter(&ztest_vdev_lock);
 leaves = MAX(zs->zs_mirrors + zs->zs_splits, 1) * ztest_opts.zo_raidz;

 spa_config_enter(spa, SCL_VDEV, FTAG, RW_READER);

 ztest_shared->zs_vdev_next_leaf = spa_num_top_vdevs(spa) * leaves;




 if (spa_has_slogs(spa) && ztest_random(4) == 0) {
  metaslab_group_t *mg;




  mg = spa_log_class(spa)->mc_rotor;
  while (!mg->mg_vd->vdev_islog)
   mg = mg->mg_next;

  guid = mg->mg_vd->vdev_guid;

  spa_config_exit(spa, SCL_VDEV, FTAG);
  pthread_rwlock_wrlock(&ztest_name_lock);
  error = spa_vdev_remove(spa, guid, B_FALSE);
  pthread_rwlock_unlock(&ztest_name_lock);

  switch (error) {
  case 0:
  case 131:
  case 132:
  case 133:
  case 129:
  case 128:
   break;
  default:
   fatal(0, "spa_vdev_remove() = %d", error);
  }
 } else {
  spa_config_exit(spa, SCL_VDEV, FTAG);




  nvroot = make_vdev_root(((void*)0), ((void*)0), ((void*)0),
      ztest_opts.zo_vdev_size, 0, (ztest_random(4) == 0) ?
      "log" : ((void*)0), ztest_opts.zo_raidz, zs->zs_mirrors, 1);

  error = spa_vdev_add(spa, nvroot);
  nvlist_free(nvroot);

  switch (error) {
  case 0:
   break;
  case 130:
   ztest_record_enospc("spa_vdev_add");
   break;
  default:
   fatal(0, "spa_vdev_add() = %d", error);
  }
 }

 mutex_exit(&ztest_vdev_lock);
}
