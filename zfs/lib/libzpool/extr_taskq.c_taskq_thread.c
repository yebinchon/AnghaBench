
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tqent_flags; int tqent_arg; int (* tqent_func ) (int ) ;TYPE_1__* tqent_prev; struct TYPE_8__* tqent_next; } ;
struct TYPE_7__ {int tq_flags; scalar_t__ tq_active; int tq_lock; int tq_wait_cv; int tq_nthreads; int tq_threadlock; int tq_dispatch_cv; TYPE_3__ tq_task; } ;
typedef TYPE_2__ taskq_t ;
typedef TYPE_3__ taskq_ent_t ;
typedef int boolean_t ;
struct TYPE_6__ {TYPE_3__* tqent_next; } ;


 int RW_READER ;
 int TASKQ_ACTIVE ;
 int TQENT_FLAG_PREALLOC ;
 int cv_broadcast (int *) ;
 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rw_enter (int *,int ) ;
 int rw_exit (int *) ;
 int stub1 (int ) ;
 int task_free (TYPE_2__*,TYPE_3__*) ;
 int thread_exit () ;

__attribute__((used)) static void
taskq_thread(void *arg)
{
 taskq_t *tq = arg;
 taskq_ent_t *t;
 boolean_t prealloc;

 mutex_enter(&tq->tq_lock);
 while (tq->tq_flags & TASKQ_ACTIVE) {
  if ((t = tq->tq_task.tqent_next) == &tq->tq_task) {
   if (--tq->tq_active == 0)
    cv_broadcast(&tq->tq_wait_cv);
   cv_wait(&tq->tq_dispatch_cv, &tq->tq_lock);
   tq->tq_active++;
   continue;
  }
  t->tqent_prev->tqent_next = t->tqent_next;
  t->tqent_next->tqent_prev = t->tqent_prev;
  t->tqent_next = ((void*)0);
  t->tqent_prev = ((void*)0);
  prealloc = t->tqent_flags & TQENT_FLAG_PREALLOC;
  mutex_exit(&tq->tq_lock);

  rw_enter(&tq->tq_threadlock, RW_READER);
  t->tqent_func(t->tqent_arg);
  rw_exit(&tq->tq_threadlock);

  mutex_enter(&tq->tq_lock);
  if (!prealloc)
   task_free(tq, t);
 }
 tq->tq_nthreads--;
 cv_broadcast(&tq->tq_wait_cv);
 mutex_exit(&tq->tq_lock);
 thread_exit();
}
