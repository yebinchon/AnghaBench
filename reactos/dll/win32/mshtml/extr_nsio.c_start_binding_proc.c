
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_2__ {scalar_t__ bscallback; int window; } ;
typedef TYPE_1__ start_binding_task_t ;
typedef int BSCallback ;


 int start_binding (int ,int *,int *) ;

__attribute__((used)) static void start_binding_proc(task_t *_task)
{
    start_binding_task_t *task = (start_binding_task_t*)_task;

    start_binding(task->window, (BSCallback*)task->bscallback, ((void*)0));
}
