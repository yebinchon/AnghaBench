
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* vdev_ops; } ;
typedef TYPE_2__ vdev_t ;
typedef int uint64_t ;
struct TYPE_12__ {TYPE_2__* spa_root_vdev; int spa_activities_lock; } ;
typedef TYPE_3__ spa_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_10__ {int vdev_op_leaf; } ;


 int B_FALSE ;
 int EINVAL ;
 int FTAG ;
 int RW_READER ;
 int SCL_CONFIG ;
 int SCL_STATE ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_enter (TYPE_3__*,int,int ,int ) ;
 int spa_config_exit (TYPE_3__*,int,int ) ;
 TYPE_2__* spa_lookup_by_guid (TYPE_3__*,int ,int ) ;
 scalar_t__ spa_vdev_initializing_impl (TYPE_2__*) ;

__attribute__((used)) static int
spa_vdev_initializing(spa_t *spa, boolean_t use_guid, uint64_t guid,
    boolean_t *in_progress)
{
 mutex_exit(&spa->spa_activities_lock);
 spa_config_enter(spa, SCL_CONFIG | SCL_STATE, FTAG, RW_READER);
 mutex_enter(&spa->spa_activities_lock);

 vdev_t *vd;
 if (use_guid) {
  vd = spa_lookup_by_guid(spa, guid, B_FALSE);
  if (vd == ((void*)0) || !vd->vdev_ops->vdev_op_leaf) {
   spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
   return (EINVAL);
  }
 } else {
  vd = spa->spa_root_vdev;
 }

 *in_progress = spa_vdev_initializing_impl(vd);

 spa_config_exit(spa, SCL_CONFIG | SCL_STATE, FTAG);
 return (0);
}
