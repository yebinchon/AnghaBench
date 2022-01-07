
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_2__ {int window; } ;
typedef TYPE_1__ readystate_task_t ;


 int notif_readystate (int ) ;

__attribute__((used)) static void notif_readystate_proc(task_t *_task)
{
    readystate_task_t *task = (readystate_task_t*)_task;
    notif_readystate(task->window);
}
