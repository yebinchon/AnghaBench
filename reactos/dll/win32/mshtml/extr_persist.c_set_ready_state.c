
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int header; TYPE_3__* window; } ;
typedef TYPE_2__ readystate_task_t ;
struct TYPE_7__ {int IHTMLWindow2_iface; } ;
struct TYPE_9__ {scalar_t__ readystate; scalar_t__ readystate_pending; int task_magic; TYPE_1__ base; scalar_t__ readystate_locked; } ;
typedef scalar_t__ READYSTATE ;
typedef TYPE_3__ HTMLOuterWindow ;
typedef int HRESULT ;


 int IHTMLWindow2_AddRef (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ TRUE ;
 TYPE_2__* heap_alloc (int) ;
 int notif_readystate (TYPE_3__*) ;
 int notif_readystate_destr ;
 int notif_readystate_proc ;
 int push_task (int *,int ,int ,int ) ;

void set_ready_state(HTMLOuterWindow *window, READYSTATE readystate)
{
    READYSTATE prev_state = window->readystate;

    window->readystate = readystate;

    if(window->readystate_locked) {
        readystate_task_t *task;
        HRESULT hres;

        if(window->readystate_pending || prev_state == readystate)
            return;

        task = heap_alloc(sizeof(*task));
        if(!task)
            return;

        IHTMLWindow2_AddRef(&window->base.IHTMLWindow2_iface);
        task->window = window;

        hres = push_task(&task->header, notif_readystate_proc, notif_readystate_destr, window->task_magic);
        if(SUCCEEDED(hres))
            window->readystate_pending = TRUE;
        return;
    }

    notif_readystate(window);
}
