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
struct TYPE_8__ {int /*<<< orphan*/  header; TYPE_3__* window; } ;
typedef  TYPE_2__ readystate_task_t ;
struct TYPE_7__ {int /*<<< orphan*/  IHTMLWindow2_iface; } ;
struct TYPE_9__ {scalar_t__ readystate; scalar_t__ readystate_pending; int /*<<< orphan*/  task_magic; TYPE_1__ base; scalar_t__ readystate_locked; } ;
typedef  scalar_t__ READYSTATE ;
typedef  TYPE_3__ HTMLOuterWindow ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  notif_readystate_destr ; 
 int /*<<< orphan*/  notif_readystate_proc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(HTMLOuterWindow *window, READYSTATE readystate)
{
    READYSTATE prev_state = window->readystate;

    window->readystate = readystate;

    if(window->readystate_locked) {
        readystate_task_t *task;
        HRESULT hres;

        if(window->readystate_pending || prev_state == readystate)
            return;

        task = FUNC2(sizeof(*task));
        if(!task)
            return;

        FUNC0(&window->base.IHTMLWindow2_iface);
        task->window = window;

        hres = FUNC4(&task->header, notif_readystate_proc, notif_readystate_destr, window->task_magic);
        if(FUNC1(hres))
            window->readystate_pending = TRUE;
        return;
    }

    FUNC3(window);
}