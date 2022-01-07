
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ vs_alloc; } ;
struct TYPE_16__ {int vdev_islog; scalar_t__ vdev_top_zap; scalar_t__ vdev_leaf_zap; TYPE_1__ vdev_stat; int vdev_config_dirty_node; int vdev_state_dirty_node; int vdev_removing; struct TYPE_16__* vdev_top; int * vdev_spa; int * vdev_mg; } ;
typedef TYPE_2__ vdev_t ;
typedef scalar_t__ uint64_t ;
typedef int sysevent_t ;
typedef int spa_t ;
typedef int metaslab_group_t ;


 int ASSERT (int) ;
 int ASSERT0 (scalar_t__) ;
 int B_TRUE ;
 int ESC_ZFS_VDEV_REMOVE_DEV ;
 int FTAG ;
 int MUTEX_HELD (int *) ;
 int RW_WRITER ;
 scalar_t__ SCL_ALL ;
 scalar_t__ TXG_CONCURRENT_STATES ;
 scalar_t__ TXG_DEFER_SIZE ;
 int VDD_DTL ;
 int VDEV_INITIALIZE_CANCELED ;
 int VDEV_LABEL_REMOVE ;
 int VDEV_TRIM_CANCELED ;
 scalar_t__ list_link_active (int *) ;
 int metaslab_group_activate (int *) ;
 int metaslab_group_passivate (int *) ;
 scalar_t__ spa_config_held (int *,scalar_t__,int ) ;
 int * spa_event_create (int *,TYPE_2__*,int *,int ) ;
 int spa_event_post (int *) ;
 int spa_log_sm_set_blocklimit (int *) ;
 int spa_namespace_lock ;
 int spa_reset_logs (int *) ;
 scalar_t__ spa_vdev_config_enter (int *) ;
 int spa_vdev_config_exit (int *,int *,scalar_t__,int ,int ) ;
 int vdev_autotrim_stop_wait (TYPE_2__*) ;
 int vdev_config_clean (TYPE_2__*) ;
 int vdev_config_dirty (TYPE_2__*) ;
 int vdev_dirty_leaves (TYPE_2__*,int ,scalar_t__) ;
 int vdev_initialize_stop_all (TYPE_2__*,int ) ;
 int vdev_label_init (TYPE_2__*,int ,int ) ;
 int vdev_metaslab_fini (TYPE_2__*) ;
 int vdev_remove_make_hole_and_free (TYPE_2__*) ;
 int vdev_state_clean (TYPE_2__*) ;
 int vdev_trim_stop_all (TYPE_2__*,int ) ;

__attribute__((used)) static int
spa_vdev_remove_log(vdev_t *vd, uint64_t *txg)
{
 metaslab_group_t *mg = vd->vdev_mg;
 spa_t *spa = vd->vdev_spa;
 int error = 0;

 ASSERT(vd->vdev_islog);
 ASSERT(vd == vd->vdev_top);
 ASSERT(MUTEX_HELD(&spa_namespace_lock));




 metaslab_group_passivate(mg);





 spa_vdev_config_exit(spa, ((void*)0),
     *txg + TXG_CONCURRENT_STATES + TXG_DEFER_SIZE, 0, FTAG);







 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 if (vd->vdev_stat.vs_alloc != 0)
  error = spa_reset_logs(spa);

 *txg = spa_vdev_config_enter(spa);

 if (error != 0) {
  metaslab_group_activate(mg);
  return (error);
 }
 ASSERT0(vd->vdev_stat.vs_alloc);





 vd->vdev_removing = B_TRUE;

 vdev_dirty_leaves(vd, VDD_DTL, *txg);
 vdev_config_dirty(vd);
 vdev_metaslab_fini(vd);
 spa_log_sm_set_blocklimit(spa);

 spa_vdev_config_exit(spa, ((void*)0), *txg, 0, FTAG);


 vdev_initialize_stop_all(vd, VDEV_INITIALIZE_CANCELED);
 vdev_trim_stop_all(vd, VDEV_TRIM_CANCELED);
 vdev_autotrim_stop_wait(vd);

 *txg = spa_vdev_config_enter(spa);

 sysevent_t *ev = spa_event_create(spa, vd, ((void*)0),
     ESC_ZFS_VDEV_REMOVE_DEV);
 ASSERT(MUTEX_HELD(&spa_namespace_lock));
 ASSERT(spa_config_held(spa, SCL_ALL, RW_WRITER) == SCL_ALL);


 ASSERT0(vd->vdev_top_zap);

 ASSERT0(vd->vdev_leaf_zap);

 (void) vdev_label_init(vd, 0, VDEV_LABEL_REMOVE);

 if (list_link_active(&vd->vdev_state_dirty_node))
  vdev_state_clean(vd);
 if (list_link_active(&vd->vdev_config_dirty_node))
  vdev_config_clean(vd);

 ASSERT0(vd->vdev_stat.vs_alloc);




 vdev_remove_make_hole_and_free(vd);

 if (ev != ((void*)0))
  spa_event_post(ev);

 return (0);
}
