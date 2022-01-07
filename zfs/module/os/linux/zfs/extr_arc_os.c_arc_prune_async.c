
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {int p_pfunc; int p_refcnt; int p_adjust; } ;
typedef TYPE_1__ arc_prune_t ;


 int ARCSTAT_BUMP (int ) ;
 scalar_t__ TASKQID_INVALID ;
 int TQ_SLEEP ;
 int arc_prune_list ;
 int arc_prune_mtx ;
 int arc_prune_task ;
 int arc_prune_taskq ;
 int arcstat_prune ;
 TYPE_1__* list_head (int *) ;
 TYPE_1__* list_next (int *,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 scalar_t__ taskq_dispatch (int ,int ,TYPE_1__*,int ) ;
 int zfs_refcount_add (int *,int ) ;
 int zfs_refcount_count (int *) ;
 int zfs_refcount_remove (int *,int ) ;

void
arc_prune_async(int64_t adjust)
{
 arc_prune_t *ap;

 mutex_enter(&arc_prune_mtx);
 for (ap = list_head(&arc_prune_list); ap != ((void*)0);
     ap = list_next(&arc_prune_list, ap)) {

  if (zfs_refcount_count(&ap->p_refcnt) >= 2)
   continue;

  zfs_refcount_add(&ap->p_refcnt, ap->p_pfunc);
  ap->p_adjust = adjust;
  if (taskq_dispatch(arc_prune_taskq, arc_prune_task,
      ap, TQ_SLEEP) == TASKQID_INVALID) {
   zfs_refcount_remove(&ap->p_refcnt, ap->p_pfunc);
   continue;
  }
  ARCSTAT_BUMP(arcstat_prune);
 }
 mutex_exit(&arc_prune_mtx);
}
