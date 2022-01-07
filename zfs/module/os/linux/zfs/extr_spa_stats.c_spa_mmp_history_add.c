
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int vdev_guid; scalar_t__ vdev_path; } ;
typedef TYPE_2__ vdev_t ;
typedef void* uint64_t ;
struct TYPE_17__ {int pl_lock; } ;
struct TYPE_16__ {scalar_t__ size; TYPE_9__ procfs_list; } ;
struct TYPE_12__ {TYPE_5__ mmp_history; } ;
struct TYPE_14__ {TYPE_1__ spa_stats; } ;
typedef TYPE_3__ spa_t ;
struct TYPE_15__ {int vdev_guid; int vdev_label; int io_error; int error_start; void* mmp_node_id; int vdev_path; void* mmp_delay; void* timestamp; void* txg; } ;
typedef TYPE_4__ spa_mmp_history_t ;
typedef TYPE_5__ spa_history_list_t ;


 int KM_SLEEP ;
 int gethrtime () ;
 int kmem_strdup (scalar_t__) ;
 TYPE_4__* kmem_zalloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int procfs_list_add (TYPE_9__*,TYPE_4__*) ;
 int spa_mmp_history_truncate (TYPE_5__*,scalar_t__) ;
 scalar_t__ zfs_multihost_history ;

void
spa_mmp_history_add(spa_t *spa, uint64_t txg, uint64_t timestamp,
    uint64_t mmp_delay, vdev_t *vd, int label, uint64_t mmp_node_id,
    int error)
{
 spa_history_list_t *shl = &spa->spa_stats.mmp_history;
 spa_mmp_history_t *smh;

 if (zfs_multihost_history == 0 && shl->size == 0)
  return;

 smh = kmem_zalloc(sizeof (spa_mmp_history_t), KM_SLEEP);
 smh->txg = txg;
 smh->timestamp = timestamp;
 smh->mmp_delay = mmp_delay;
 if (vd) {
  smh->vdev_guid = vd->vdev_guid;
  if (vd->vdev_path)
   smh->vdev_path = kmem_strdup(vd->vdev_path);
 }
 smh->vdev_label = label;
 smh->mmp_node_id = mmp_node_id;

 if (error) {
  smh->io_error = error;
  smh->error_start = gethrtime();
  smh->vdev_guid = 1;
 }

 mutex_enter(&shl->procfs_list.pl_lock);
 procfs_list_add(&shl->procfs_list, smh);
 shl->size++;
 spa_mmp_history_truncate(shl, zfs_multihost_history);
 mutex_exit(&shl->procfs_list.pl_lock);
}
