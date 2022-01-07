
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int p_refcnt; } ;
typedef TYPE_1__ arc_prune_t ;


 int ASSERT0 (int ) ;
 scalar_t__ B_FALSE ;
 scalar_t__ B_TRUE ;
 int arc_prune_list ;
 int arc_prune_mtx ;
 int arc_prune_taskq ;
 int kmem_free (TYPE_1__*,int) ;
 int list_remove (int *,TYPE_1__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int taskq_wait_outstanding (int ,int ) ;
 int zfs_refcount_count (int *) ;
 int zfs_refcount_destroy (int *) ;
 scalar_t__ zfs_refcount_remove (int *,int *) ;

void
arc_remove_prune_callback(arc_prune_t *p)
{
 boolean_t wait = B_FALSE;
 mutex_enter(&arc_prune_mtx);
 list_remove(&arc_prune_list, p);
 if (zfs_refcount_remove(&p->p_refcnt, &arc_prune_list) > 0)
  wait = B_TRUE;
 mutex_exit(&arc_prune_mtx);


 if (wait)
  taskq_wait_outstanding(arc_prune_taskq, 0);
 ASSERT0(zfs_refcount_count(&p->p_refcnt));
 zfs_refcount_destroy(&p->p_refcnt);
 kmem_free(p, sizeof (*p));
}
