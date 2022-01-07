
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_6__ {TYPE_3__* bsc; } ;
typedef TYPE_2__ stop_request_task_t ;
struct TYPE_5__ {int entry; } ;
struct TYPE_7__ {TYPE_1__ bsc; } ;


 int S_OK ;
 int TRACE (char*,TYPE_3__*) ;
 int list_init (int *) ;
 int list_remove (int *) ;
 int on_stop_nsrequest (TYPE_3__*,int ) ;

__attribute__((used)) static void stop_request_proc(task_t *_task)
{
    stop_request_task_t *task = (stop_request_task_t*)_task;

    TRACE("(%p)\n", task->bsc);

    list_remove(&task->bsc->bsc.entry);
    list_init(&task->bsc->bsc.entry);
    on_stop_nsrequest(task->bsc, S_OK);
}
