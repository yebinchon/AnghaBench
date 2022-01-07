
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_3__ {int uri; } ;
typedef TYPE_1__ navigate_javascript_task_t ;


 int IUri_Release (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void navigate_javascript_task_destr(task_t *_task)
{
    navigate_javascript_task_t *task = (navigate_javascript_task_t*)_task;

    IUri_Release(task->uri);
    heap_free(task);
}
