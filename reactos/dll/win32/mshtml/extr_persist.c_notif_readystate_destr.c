
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_6__ {TYPE_2__* window; } ;
typedef TYPE_3__ readystate_task_t ;
struct TYPE_4__ {int IHTMLWindow2_iface; } ;
struct TYPE_5__ {TYPE_1__ base; } ;


 int IHTMLWindow2_Release (int *) ;

__attribute__((used)) static void notif_readystate_destr(task_t *_task)
{
    readystate_task_t *task = (readystate_task_t*)_task;
    IHTMLWindow2_Release(&task->window->base.IHTMLWindow2_iface);
}
