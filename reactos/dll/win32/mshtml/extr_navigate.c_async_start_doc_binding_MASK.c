#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  header; TYPE_3__* pending_window; int /*<<< orphan*/ * window; } ;
typedef  TYPE_2__ start_doc_binding_task_t ;
struct TYPE_7__ {int /*<<< orphan*/  IHTMLWindow2_iface; } ;
struct TYPE_9__ {int /*<<< orphan*/  task_magic; TYPE_1__ base; } ;
typedef  int /*<<< orphan*/  HTMLOuterWindow ;
typedef  TYPE_3__ HTMLInnerWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_3__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  start_doc_binding_proc ; 
 int /*<<< orphan*/  start_doc_binding_task_destr ; 

HRESULT FUNC4(HTMLOuterWindow *window, HTMLInnerWindow *pending_window)
{
    start_doc_binding_task_t *task;

    FUNC1("%p\n", pending_window);

    task = FUNC2(sizeof(start_doc_binding_task_t));
    if(!task)
        return E_OUTOFMEMORY;

    task->window = window;
    task->pending_window = pending_window;
    FUNC0(&pending_window->base.IHTMLWindow2_iface);

    return FUNC3(&task->header, start_doc_binding_proc, start_doc_binding_task_destr, pending_window->task_magic);
}