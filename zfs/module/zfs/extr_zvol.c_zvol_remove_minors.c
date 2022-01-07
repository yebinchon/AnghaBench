
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zvol_task_t ;
typedef scalar_t__ taskqid_t ;
struct TYPE_3__ {int spa_zvol_taskq; } ;
typedef TYPE_1__ spa_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_FALSE ;
 scalar_t__ TASKQID_INVALID ;
 int TQ_SLEEP ;
 int ZVOL_ASYNC_REMOVE_MINORS ;
 scalar_t__ taskq_dispatch (int ,int ,int *,int ) ;
 int taskq_wait_id (int ,scalar_t__) ;
 int * zvol_task_alloc (int ,char const*,int *,unsigned long long) ;
 int zvol_task_cb ;

void
zvol_remove_minors(spa_t *spa, const char *name, boolean_t async)
{
 zvol_task_t *task;
 taskqid_t id;

 task = zvol_task_alloc(ZVOL_ASYNC_REMOVE_MINORS, name, ((void*)0), ~0ULL);
 if (task == ((void*)0))
  return;

 id = taskq_dispatch(spa->spa_zvol_taskq, zvol_task_cb, task, TQ_SLEEP);
 if ((async == B_FALSE) && (id != TASKQID_INVALID))
  taskq_wait_id(spa->spa_zvol_taskq, id);
}
