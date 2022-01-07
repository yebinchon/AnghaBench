
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {unsigned long long vdev_ms_shift; int vdev_stat_lock; int vdev_resilver_deferred; TYPE_2__* vdev_ops; TYPE_1__* vdev_mg; struct TYPE_14__* vdev_top; int * vdev_aux; scalar_t__ vdev_asize; scalar_t__ vdev_max_asize; int vdev_trim_action_time; int vdev_trim_state; int vdev_trim_bytes_est; int vdev_trim_bytes_done; int vdev_has_trim; int vdev_initialize_action_time; int vdev_initialize_state; int vdev_initialize_bytes_est; int vdev_initialize_bytes_done; int vdev_state; int vdev_stat; } ;
typedef TYPE_3__ vdev_t ;
struct TYPE_15__ {int vs_trim_notsup; int vs_resilver_deferred; int vs_fragmentation; int vs_esize; int vs_trim_action_time; int vs_trim_state; int vs_trim_bytes_est; int vs_trim_bytes_done; int vs_initialize_action_time; int vs_initialize_state; int vs_initialize_bytes_est; int vs_initialize_bytes_done; int vs_rsize; int vs_state; scalar_t__ vs_timestamp; } ;
typedef TYPE_4__ vdev_stat_t ;
typedef int vdev_stat_ex_t ;
struct TYPE_13__ {scalar_t__ vdev_op_leaf; } ;
struct TYPE_12__ {int mg_fragmentation; } ;


 int P2ALIGN (scalar_t__,unsigned long long) ;
 scalar_t__ VDEV_LABEL_END_SIZE ;
 scalar_t__ VDEV_LABEL_START_SIZE ;
 int bcopy (int *,TYPE_4__*,int) ;
 scalar_t__ gethrtime () ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int vdev_get_min_asize (TYPE_3__*) ;
 int vdev_get_stats_ex_impl (TYPE_3__*,TYPE_4__*,int *) ;
 scalar_t__ vdev_is_concrete (TYPE_3__*) ;

void
vdev_get_stats_ex(vdev_t *vd, vdev_stat_t *vs, vdev_stat_ex_t *vsx)
{
 vdev_t *tvd = vd->vdev_top;
 mutex_enter(&vd->vdev_stat_lock);
 if (vs) {
  bcopy(&vd->vdev_stat, vs, sizeof (*vs));
  vs->vs_timestamp = gethrtime() - vs->vs_timestamp;
  vs->vs_state = vd->vdev_state;
  vs->vs_rsize = vdev_get_min_asize(vd);
  if (vd->vdev_ops->vdev_op_leaf) {
   vs->vs_rsize += VDEV_LABEL_START_SIZE +
       VDEV_LABEL_END_SIZE;





   vs->vs_initialize_bytes_done =
       vd->vdev_initialize_bytes_done;
   vs->vs_initialize_bytes_est =
       vd->vdev_initialize_bytes_est;
   vs->vs_initialize_state = vd->vdev_initialize_state;
   vs->vs_initialize_action_time =
       vd->vdev_initialize_action_time;






   vs->vs_trim_notsup = !vd->vdev_has_trim;
   vs->vs_trim_bytes_done = vd->vdev_trim_bytes_done;
   vs->vs_trim_bytes_est = vd->vdev_trim_bytes_est;
   vs->vs_trim_state = vd->vdev_trim_state;
   vs->vs_trim_action_time = vd->vdev_trim_action_time;
  }






  if (vd->vdev_aux == ((void*)0) && tvd != ((void*)0)) {
   vs->vs_esize = P2ALIGN(
       vd->vdev_max_asize - vd->vdev_asize,
       1ULL << tvd->vdev_ms_shift);
  }
  if (vd->vdev_aux == ((void*)0) && vd == vd->vdev_top &&
      vdev_is_concrete(vd)) {
   vs->vs_fragmentation = (vd->vdev_mg != ((void*)0)) ?
       vd->vdev_mg->mg_fragmentation : 0;
  }
  if (vd->vdev_ops->vdev_op_leaf)
   vs->vs_resilver_deferred = vd->vdev_resilver_deferred;
 }

 vdev_get_stats_ex_impl(vd, vs, vsx);
 mutex_exit(&vd->vdev_stat_lock);
}
