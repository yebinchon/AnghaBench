#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  header; TYPE_5__* elem; } ;
typedef  TYPE_4__ fire_readystatechange_task_t ;
struct TYPE_14__ {TYPE_1__* window; } ;
struct TYPE_10__ {int /*<<< orphan*/  nsnode; TYPE_8__* doc; } ;
struct TYPE_11__ {TYPE_2__ node; } ;
struct TYPE_13__ {TYPE_3__ element; scalar_t__ pending_readystatechange_event; int /*<<< orphan*/  IHTMLScriptElement_iface; scalar_t__ readystate; } ;
struct TYPE_9__ {int /*<<< orphan*/  task_magic; int /*<<< orphan*/  parser_callback_cnt; } ;
typedef  scalar_t__ READYSTATE ;
typedef  TYPE_5__ HTMLScriptElement ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  EVENTID_READYSTATECHANGE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ READYSTATE_INTERACTIVE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fire_readystatechange_proc ; 
 int /*<<< orphan*/  fire_readystatechange_task_destr ; 
 TYPE_4__* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(HTMLScriptElement *script_elem, READYSTATE readystate)
{
    script_elem->readystate = readystate;

    if(readystate != READYSTATE_INTERACTIVE) {
        if(!script_elem->element.node.doc->window->parser_callback_cnt) {
            fire_readystatechange_task_t *task;
            HRESULT hres;

            if(script_elem->pending_readystatechange_event)
                return;

            task = FUNC3(sizeof(*task));
            if(!task)
                return;

            FUNC0(&script_elem->IHTMLScriptElement_iface);
            task->elem = script_elem;

            hres = FUNC4(&task->header, fire_readystatechange_proc, fire_readystatechange_task_destr,
                    script_elem->element.node.doc->window->task_magic);
            if(FUNC1(hres))
                script_elem->pending_readystatechange_event = TRUE;
        }else {
            script_elem->pending_readystatechange_event = FALSE;
            FUNC2(script_elem->element.node.doc, EVENTID_READYSTATECHANGE, FALSE,
                    script_elem->element.node.nsnode, NULL, NULL);
        }
    }
}