#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  task_t ;
struct TYPE_7__ {int /*<<< orphan*/  uri; int /*<<< orphan*/  mon; TYPE_2__* bscallback; } ;
typedef  TYPE_3__ navigate_task_t ;
struct TYPE_5__ {int /*<<< orphan*/  IBindStatusCallback_iface; } ;
struct TYPE_6__ {TYPE_1__ bsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC4(task_t *_task)
{
    navigate_task_t *task = (navigate_task_t*)_task;

    FUNC0(&task->bscallback->bsc.IBindStatusCallback_iface);
    FUNC1(task->mon);
    FUNC2(task->uri);
    FUNC3(task);
}