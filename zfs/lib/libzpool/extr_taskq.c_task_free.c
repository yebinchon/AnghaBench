
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ tq_nalloc; scalar_t__ tq_minalloc; int tq_maxalloc_cv; scalar_t__ tq_maxalloc_wait; int tq_lock; TYPE_2__* tq_freelist; } ;
typedef TYPE_1__ taskq_t ;
struct TYPE_7__ {struct TYPE_7__* tqent_next; } ;
typedef TYPE_2__ taskq_ent_t ;


 int cv_signal (int *) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

__attribute__((used)) static void
task_free(taskq_t *tq, taskq_ent_t *t)
{
 if (tq->tq_nalloc <= tq->tq_minalloc) {
  t->tqent_next = tq->tq_freelist;
  tq->tq_freelist = t;
 } else {
  tq->tq_nalloc--;
  mutex_exit(&tq->tq_lock);
  kmem_free(t, sizeof (taskq_ent_t));
  mutex_enter(&tq->tq_lock);
 }

 if (tq->tq_maxalloc_wait)
  cv_signal(&tq->tq_maxalloc_cv);
}
