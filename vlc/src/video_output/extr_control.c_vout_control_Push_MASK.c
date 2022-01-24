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
struct TYPE_3__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_request; int /*<<< orphan*/  cmd; int /*<<< orphan*/  is_dead; } ;
typedef  TYPE_1__ vout_control_t ;
typedef  int /*<<< orphan*/  vout_control_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(vout_control_t *ctrl, vout_control_cmd_t *cmd)
{
    FUNC2(&ctrl->lock);
    if (!ctrl->is_dead) {
        FUNC0(ctrl->cmd, *cmd);
        FUNC1(&ctrl->wait_request);
    } else {
        FUNC4(cmd);
    }
    FUNC3(&ctrl->lock);
}