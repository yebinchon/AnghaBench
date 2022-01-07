
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int vdev_scan_io_queue_lock; int * vdev_scan_io_queue; } ;
typedef TYPE_3__ vdev_t ;
typedef size_t uint64_t ;
struct TYPE_11__ {TYPE_2__* spa_root_vdev; } ;
typedef TYPE_4__ spa_t ;
struct TYPE_12__ {scalar_t__ scn_bytes_pending; int * scn_taskq; int scn_is_sorted; TYPE_1__* scn_dp; } ;
typedef TYPE_5__ dsl_scan_t ;
struct TYPE_9__ {int vdev_children; TYPE_3__** vdev_child; } ;
struct TYPE_8__ {TYPE_4__* dp_spa; } ;


 int ASSERT (int ) ;
 int RW_READER ;
 int SCL_CONFIG ;
 scalar_t__ TASKQID_INVALID ;
 int TASKQ_PREPOPULATE ;
 int TQ_SLEEP ;
 int VERIFY (int) ;
 int minclsyspri ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int scan_io_queues_run_one ;
 int spa_config_held (TYPE_4__*,int ,int ) ;
 int * taskq_create (char*,int,int ,int,int,int ) ;
 scalar_t__ taskq_dispatch (int *,int ,int *,int ) ;
 int taskq_wait (int *) ;

__attribute__((used)) static void
scan_io_queues_run(dsl_scan_t *scn)
{
 spa_t *spa = scn->scn_dp->dp_spa;

 ASSERT(scn->scn_is_sorted);
 ASSERT(spa_config_held(spa, SCL_CONFIG, RW_READER));

 if (scn->scn_bytes_pending == 0)
  return;

 if (scn->scn_taskq == ((void*)0)) {
  int nthreads = spa->spa_root_vdev->vdev_children;
  scn->scn_taskq = taskq_create("dsl_scan_iss", nthreads,
      minclsyspri, nthreads, nthreads, TASKQ_PREPOPULATE);
 }

 for (uint64_t i = 0; i < spa->spa_root_vdev->vdev_children; i++) {
  vdev_t *vd = spa->spa_root_vdev->vdev_child[i];

  mutex_enter(&vd->vdev_scan_io_queue_lock);
  if (vd->vdev_scan_io_queue != ((void*)0)) {
   VERIFY(taskq_dispatch(scn->scn_taskq,
       scan_io_queues_run_one, vd->vdev_scan_io_queue,
       TQ_SLEEP) != TASKQID_INVALID);
  }
  mutex_exit(&vd->vdev_scan_io_queue_lock);
 }






 taskq_wait(scn->scn_taskq);
}
