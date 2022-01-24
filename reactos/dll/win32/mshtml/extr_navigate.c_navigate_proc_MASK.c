#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
struct TYPE_7__ {TYPE_4__* bscallback; TYPE_3__* window; int /*<<< orphan*/  uri; int /*<<< orphan*/  flags; int /*<<< orphan*/  mon; } ;
typedef  TYPE_1__ navigate_task_t ;
struct TYPE_8__ {int /*<<< orphan*/  mon; } ;
struct TYPE_10__ {TYPE_2__ bsc; } ;
struct TYPE_9__ {int /*<<< orphan*/  pending_window; } ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(task_t *_task)
{
    navigate_task_t *task = (navigate_task_t*)_task;
    HRESULT hres;

    hres = FUNC3(task->window, task->mon, task->uri, NULL, task->bscallback, TRUE);
    if(FUNC0(hres)) {
        FUNC1(task->window, task->bscallback->bsc.mon, task->flags);
        FUNC2(task->window, task->uri);
        FUNC4(task->window->pending_window, &task->bscallback->bsc, NULL);
    }
}