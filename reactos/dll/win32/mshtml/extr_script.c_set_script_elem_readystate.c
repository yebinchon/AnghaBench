
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int header; TYPE_5__* elem; } ;
typedef TYPE_4__ fire_readystatechange_task_t ;
struct TYPE_14__ {TYPE_1__* window; } ;
struct TYPE_10__ {int nsnode; TYPE_8__* doc; } ;
struct TYPE_11__ {TYPE_2__ node; } ;
struct TYPE_13__ {TYPE_3__ element; scalar_t__ pending_readystatechange_event; int IHTMLScriptElement_iface; scalar_t__ readystate; } ;
struct TYPE_9__ {int task_magic; int parser_callback_cnt; } ;
typedef scalar_t__ READYSTATE ;
typedef TYPE_5__ HTMLScriptElement ;
typedef int HRESULT ;


 int EVENTID_READYSTATECHANGE ;
 scalar_t__ FALSE ;
 int IHTMLScriptElement_AddRef (int *) ;
 scalar_t__ READYSTATE_INTERACTIVE ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ TRUE ;
 int fire_event (TYPE_8__*,int ,scalar_t__,int ,int *,int *) ;
 int fire_readystatechange_proc ;
 int fire_readystatechange_task_destr ;
 TYPE_4__* heap_alloc (int) ;
 int push_task (int *,int ,int ,int ) ;

__attribute__((used)) static void set_script_elem_readystate(HTMLScriptElement *script_elem, READYSTATE readystate)
{
    script_elem->readystate = readystate;

    if(readystate != READYSTATE_INTERACTIVE) {
        if(!script_elem->element.node.doc->window->parser_callback_cnt) {
            fire_readystatechange_task_t *task;
            HRESULT hres;

            if(script_elem->pending_readystatechange_event)
                return;

            task = heap_alloc(sizeof(*task));
            if(!task)
                return;

            IHTMLScriptElement_AddRef(&script_elem->IHTMLScriptElement_iface);
            task->elem = script_elem;

            hres = push_task(&task->header, fire_readystatechange_proc, fire_readystatechange_task_destr,
                    script_elem->element.node.doc->window->task_magic);
            if(SUCCEEDED(hres))
                script_elem->pending_readystatechange_event = TRUE;
        }else {
            script_elem->pending_readystatechange_event = FALSE;
            fire_event(script_elem->element.node.doc, EVENTID_READYSTATECHANGE, FALSE,
                    script_elem->element.node.nsnode, ((void*)0), ((void*)0));
        }
    }
}
