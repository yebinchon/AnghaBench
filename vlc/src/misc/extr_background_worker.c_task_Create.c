
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {void* entity; int timeout; void* id; } ;
struct TYPE_2__ {int (* pf_hold ) (void*) ;int default_timeout; } ;
struct background_worker {TYPE_1__ conf; } ;


 int VLC_TICK_FROM_MS (int) ;
 struct task* malloc (int) ;
 int stub1 (void*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static struct task *task_Create(struct background_worker *worker, void *id,
                                void *entity, int timeout)
{
    struct task *task = malloc(sizeof(*task));
    if (unlikely(!task))
        return ((void*)0);

    task->id = id;
    task->entity = entity;
    task->timeout = timeout < 0 ? worker->conf.default_timeout : VLC_TICK_FROM_MS(timeout);
    worker->conf.pf_hold(task->entity);
    return task;
}
