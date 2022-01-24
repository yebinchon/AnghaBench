#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int i_size; } ;
struct TYPE_5__ {int /*<<< orphan*/  wait_available; int /*<<< orphan*/  wait_request; int /*<<< orphan*/  lock; TYPE_3__ cmd; } ;
typedef  TYPE_1__ vout_control_t ;
typedef  int /*<<< orphan*/  vout_control_cmd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(vout_control_t *ctrl)
{
    /* */
    for (int i = 0; i < ctrl->cmd.i_size; i++) {
        vout_control_cmd_t cmd = FUNC1(ctrl->cmd, i);
        FUNC4(&cmd);
    }
    FUNC0(ctrl->cmd);

    FUNC3(&ctrl->lock);
    FUNC2(&ctrl->wait_request);
    FUNC2(&ctrl->wait_available);
}