
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tq_flags; scalar_t__ tq_nthreads; int tq_nspawn; scalar_t__ tq_maxthreads; } ;
typedef TYPE_1__ taskq_t ;


 int TASKQ_ACTIVE ;
 int TASKQ_DYNAMIC ;
 int TQ_NOSLEEP ;
 int dynamic_taskq ;
 int taskq_dispatch (int ,int ,TYPE_1__*,int ) ;
 int taskq_thread_spawn_task ;

__attribute__((used)) static int
taskq_thread_spawn(taskq_t *tq)
{
 int spawning = 0;

 if (!(tq->tq_flags & TASKQ_DYNAMIC))
  return (0);

 if ((tq->tq_nthreads + tq->tq_nspawn < tq->tq_maxthreads) &&
     (tq->tq_flags & TASKQ_ACTIVE)) {
  spawning = (++tq->tq_nspawn);
  taskq_dispatch(dynamic_taskq, taskq_thread_spawn_task,
      tq, TQ_NOSLEEP);
 }

 return (spawning);
}
