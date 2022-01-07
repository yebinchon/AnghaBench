
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* tqent_next; } ;
struct TYPE_5__ {scalar_t__ tq_active; int tq_lock; int tq_wait_cv; TYPE_1__ tq_task; } ;
typedef TYPE_2__ taskq_t ;


 int cv_wait (int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
taskq_wait(taskq_t *tq)
{
 mutex_enter(&tq->tq_lock);
 while (tq->tq_task.tqent_next != &tq->tq_task || tq->tq_active != 0)
  cv_wait(&tq->tq_wait_cv, &tq->tq_lock);
 mutex_exit(&tq->tq_lock);
}
