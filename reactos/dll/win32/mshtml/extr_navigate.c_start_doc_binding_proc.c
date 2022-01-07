
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_6__ {TYPE_3__* pending_window; int window; } ;
typedef TYPE_2__ start_doc_binding_task_t ;
struct TYPE_8__ {int mon; } ;
struct TYPE_7__ {TYPE_1__* bscallback; } ;
struct TYPE_5__ {TYPE_4__ bsc; } ;


 int BINDING_NAVIGATED ;
 int set_current_mon (int ,int ,int ) ;
 int start_binding (TYPE_3__*,TYPE_4__*,int *) ;

__attribute__((used)) static void start_doc_binding_proc(task_t *_task)
{
    start_doc_binding_task_t *task = (start_doc_binding_task_t*)_task;

    set_current_mon(task->window, task->pending_window->bscallback->bsc.mon, BINDING_NAVIGATED);
    start_binding(task->pending_window, &task->pending_window->bscallback->bsc, ((void*)0));
}
