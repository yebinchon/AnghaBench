#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int is_held; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_available; int /*<<< orphan*/  is_waiting; } ;
typedef  TYPE_1__ vout_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(vout_control_t *ctrl)
{
    FUNC1(&ctrl->lock);
    while (ctrl->is_held || !ctrl->is_waiting)
        FUNC0(&ctrl->wait_available, &ctrl->lock);
    ctrl->is_held = true;
    FUNC2(&ctrl->lock);
}