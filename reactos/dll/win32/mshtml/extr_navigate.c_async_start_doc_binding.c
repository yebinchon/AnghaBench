
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int header; TYPE_3__* pending_window; int * window; } ;
typedef TYPE_2__ start_doc_binding_task_t ;
struct TYPE_7__ {int IHTMLWindow2_iface; } ;
struct TYPE_9__ {int task_magic; TYPE_1__ base; } ;
typedef int HTMLOuterWindow ;
typedef TYPE_3__ HTMLInnerWindow ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IHTMLWindow2_AddRef (int *) ;
 int TRACE (char*,TYPE_3__*) ;
 TYPE_2__* heap_alloc (int) ;
 int push_task (int *,int ,int ,int ) ;
 int start_doc_binding_proc ;
 int start_doc_binding_task_destr ;

HRESULT async_start_doc_binding(HTMLOuterWindow *window, HTMLInnerWindow *pending_window)
{
    start_doc_binding_task_t *task;

    TRACE("%p\n", pending_window);

    task = heap_alloc(sizeof(start_doc_binding_task_t));
    if(!task)
        return E_OUTOFMEMORY;

    task->window = window;
    task->pending_window = pending_window;
    IHTMLWindow2_AddRef(&pending_window->base.IHTMLWindow2_iface);

    return push_task(&task->header, start_doc_binding_proc, start_doc_binding_task_destr, pending_window->task_magic);
}
