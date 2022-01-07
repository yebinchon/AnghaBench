
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_7__ {TYPE_2__* window; } ;
typedef TYPE_3__ refresh_task_t ;
struct TYPE_5__ {int IHTMLWindow2_iface; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int IHTMLWindow2_Release (int *) ;
 int heap_free (TYPE_3__*) ;

__attribute__((used)) static void refresh_destr(task_t *_task)
{
    refresh_task_t *task = (refresh_task_t*)_task;

    IHTMLWindow2_Release(&task->window->base.IHTMLWindow2_iface);
    heap_free(task);
}
