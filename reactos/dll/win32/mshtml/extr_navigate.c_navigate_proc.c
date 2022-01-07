
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int task_t ;
struct TYPE_7__ {TYPE_4__* bscallback; TYPE_3__* window; int uri; int flags; int mon; } ;
typedef TYPE_1__ navigate_task_t ;
struct TYPE_8__ {int mon; } ;
struct TYPE_10__ {TYPE_2__ bsc; } ;
struct TYPE_9__ {int pending_window; } ;
typedef int HRESULT ;


 scalar_t__ SUCCEEDED (int ) ;
 int TRUE ;
 int set_current_mon (TYPE_3__*,int ,int ) ;
 int set_current_uri (TYPE_3__*,int ) ;
 int set_moniker (TYPE_3__*,int ,int ,int *,TYPE_4__*,int ) ;
 int start_binding (int ,TYPE_2__*,int *) ;

__attribute__((used)) static void navigate_proc(task_t *_task)
{
    navigate_task_t *task = (navigate_task_t*)_task;
    HRESULT hres;

    hres = set_moniker(task->window, task->mon, task->uri, ((void*)0), task->bscallback, TRUE);
    if(SUCCEEDED(hres)) {
        set_current_mon(task->window, task->bscallback->bsc.mon, task->flags);
        set_current_uri(task->window, task->uri);
        start_binding(task->window->pending_window, &task->bscallback->bsc, ((void*)0));
    }
}
