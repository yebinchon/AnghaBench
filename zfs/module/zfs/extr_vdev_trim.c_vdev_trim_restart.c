
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ vdev_leaf_zap; size_t vdev_trim_state; size_t vdev_children; struct TYPE_9__** vdev_child; int vdev_trim_lock; int vdev_trim_secure; int vdev_trim_partial; int vdev_trim_rate; int * vdev_trim_thread; TYPE_1__* vdev_top; scalar_t__ vdev_offline; scalar_t__ vdev_trim_action_time; TYPE_7__* vdev_spa; } ;
typedef TYPE_2__ vdev_t ;
typedef size_t uint64_t ;
typedef int trim_state ;
typedef int timestamp ;
typedef scalar_t__ time_t ;
struct TYPE_10__ {int spa_meta_objset; } ;
struct TYPE_8__ {int vdev_removing; } ;


 int ASSERT (int) ;
 int ENOENT ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 int SCL_ALL ;
 int VDEV_LEAF_ZAP_TRIM_ACTION_TIME ;
 int VDEV_LEAF_ZAP_TRIM_STATE ;
 size_t VDEV_TRIM_ACTIVE ;
 size_t VDEV_TRIM_NONE ;
 size_t VDEV_TRIM_SUSPENDED ;
 int VERIFY0 (int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int spa_config_held (TYPE_7__*,int ,int ) ;
 int spa_namespace_lock ;
 int vdev_trim (TYPE_2__*,int ,int ,int ) ;
 int vdev_trim_load (TYPE_2__*) ;
 scalar_t__ vdev_writeable (TYPE_2__*) ;
 int zap_lookup (int ,scalar_t__,int ,int,int,size_t*) ;

void
vdev_trim_restart(vdev_t *vd)
{
 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 ASSERT(!spa_config_held(vd->vdev_spa, SCL_ALL, RW_WRITER));

 if (vd->vdev_leaf_zap != 0) {
  mutex_enter(&vd->vdev_trim_lock);
  uint64_t trim_state = VDEV_TRIM_NONE;
  int err = zap_lookup(vd->vdev_spa->spa_meta_objset,
      vd->vdev_leaf_zap, VDEV_LEAF_ZAP_TRIM_STATE,
      sizeof (trim_state), 1, &trim_state);
  ASSERT(err == 0 || err == ENOENT);
  vd->vdev_trim_state = trim_state;

  uint64_t timestamp = 0;
  err = zap_lookup(vd->vdev_spa->spa_meta_objset,
      vd->vdev_leaf_zap, VDEV_LEAF_ZAP_TRIM_ACTION_TIME,
      sizeof (timestamp), 1, &timestamp);
  ASSERT(err == 0 || err == ENOENT);
  vd->vdev_trim_action_time = (time_t)timestamp;

  if (vd->vdev_trim_state == VDEV_TRIM_SUSPENDED ||
      vd->vdev_offline) {

   VERIFY0(vdev_trim_load(vd));
  } else if (vd->vdev_trim_state == VDEV_TRIM_ACTIVE &&
      vdev_writeable(vd) && !vd->vdev_top->vdev_removing &&
      vd->vdev_trim_thread == ((void*)0)) {
   VERIFY0(vdev_trim_load(vd));
   vdev_trim(vd, vd->vdev_trim_rate,
       vd->vdev_trim_partial, vd->vdev_trim_secure);
  }

  mutex_exit(&vd->vdev_trim_lock);
 }

 for (uint64_t i = 0; i < vd->vdev_children; i++) {
  vdev_trim_restart(vd->vdev_child[i]);
 }
}
