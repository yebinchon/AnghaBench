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
struct TYPE_3__ {int is_held; int is_waiting; int is_dead; int can_sleep; int /*<<< orphan*/  cmd; int /*<<< orphan*/  wait_available; int /*<<< orphan*/  wait_request; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ vout_control_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(vout_control_t *ctrl)
{
    FUNC2(&ctrl->lock);
    FUNC1(&ctrl->wait_request);
    FUNC1(&ctrl->wait_available);

    ctrl->is_held = false;
    ctrl->is_waiting = false;
    ctrl->is_dead = false;
    ctrl->can_sleep = true;
    FUNC0(ctrl->cmd);
}