
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ vs_aux; } ;
struct TYPE_12__ {unsigned long long vdev_faulted; unsigned long long vdev_degraded; int * vdev_aux; int vdev_islog; void* vdev_delayed_close; scalar_t__ vdev_label_aux; void* vdev_tmpoffline; TYPE_2__ vdev_stat; struct TYPE_12__* vdev_top; TYPE_1__* vdev_ops; } ;
typedef TYPE_3__ vdev_t ;
typedef scalar_t__ vdev_aux_t ;
typedef int uint64_t ;
typedef int spa_t ;
struct TYPE_10__ {int vdev_op_leaf; } ;


 void* B_FALSE ;
 void* B_TRUE ;
 int ENODEV ;
 int ENOTSUP ;
 int SCL_NONE ;
 scalar_t__ VDEV_AUX_EXTERNAL ;
 scalar_t__ VDEV_AUX_EXTERNAL_PERSIST ;
 int VDEV_STATE_DEGRADED ;
 int VDEV_STATE_FAULTED ;
 TYPE_3__* spa_lookup_by_guid (int *,int ,void*) ;
 int spa_vdev_state_enter (int *,int ) ;
 int spa_vdev_state_exit (int *,TYPE_3__*,int ) ;
 scalar_t__ vdev_dtl_required (TYPE_3__*) ;
 scalar_t__ vdev_readable (TYPE_3__*) ;
 int vdev_reopen (TYPE_3__*) ;
 int vdev_set_state (TYPE_3__*,void*,int ,scalar_t__) ;

int
vdev_fault(spa_t *spa, uint64_t guid, vdev_aux_t aux)
{
 vdev_t *vd, *tvd;

 spa_vdev_state_enter(spa, SCL_NONE);

 if ((vd = spa_lookup_by_guid(spa, guid, B_TRUE)) == ((void*)0))
  return (spa_vdev_state_exit(spa, ((void*)0), ENODEV));

 if (!vd->vdev_ops->vdev_op_leaf)
  return (spa_vdev_state_exit(spa, ((void*)0), ENOTSUP));

 tvd = vd->vdev_top;





 if (aux == VDEV_AUX_EXTERNAL_PERSIST) {
  vd->vdev_stat.vs_aux = VDEV_AUX_EXTERNAL;
  vd->vdev_tmpoffline = B_FALSE;
  aux = VDEV_AUX_EXTERNAL;
 } else {
  vd->vdev_tmpoffline = B_TRUE;
 }






 vd->vdev_label_aux = aux;




 vd->vdev_delayed_close = B_FALSE;
 vd->vdev_faulted = 1ULL;
 vd->vdev_degraded = 0ULL;
 vdev_set_state(vd, B_FALSE, VDEV_STATE_FAULTED, aux);





 if (!tvd->vdev_islog && vd->vdev_aux == ((void*)0) && vdev_dtl_required(vd)) {
  vd->vdev_degraded = 1ULL;
  vd->vdev_faulted = 0ULL;





  vdev_reopen(tvd);

  if (vdev_readable(vd))
   vdev_set_state(vd, B_FALSE, VDEV_STATE_DEGRADED, aux);
 }

 return (spa_vdev_state_exit(spa, vd, 0));
}
