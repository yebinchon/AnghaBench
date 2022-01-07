
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task {int entity; } ;
struct TYPE_2__ {int (* pf_release ) (int ) ;} ;
struct background_worker {TYPE_1__ conf; } ;


 int free (struct task*) ;
 int stub1 (int ) ;

__attribute__((used)) static void task_Destroy(struct background_worker *worker, struct task *task)
{
    worker->conf.pf_release(task->entity);
    free(task);
}
