#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
struct TYPE_8__ {int /*<<< orphan*/  viewpoint; } ;
struct TYPE_10__ {int /*<<< orphan*/  control; int /*<<< orphan*/  window_lock; TYPE_1__ display_cfg; int /*<<< orphan*/  dummy; } ;
typedef  TYPE_3__ vout_thread_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  viewpoint; } ;
typedef  TYPE_4__ vout_control_cmd_t ;
typedef  int /*<<< orphan*/  vlc_viewpoint_t ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_CONTROL_VIEWPOINT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 

void FUNC5(vout_thread_t *vout,
                          const vlc_viewpoint_t *p_viewpoint)
{
    vout_thread_sys_t *sys = vout->p;
    FUNC0(!sys->dummy);
    vout_control_cmd_t cmd;

    FUNC1(&sys->window_lock);
    sys->display_cfg.viewpoint = *p_viewpoint;
    /* no window size update here */
    FUNC2(&sys->window_lock);

    FUNC4(&cmd, VOUT_CONTROL_VIEWPOINT);
    cmd.viewpoint = *p_viewpoint;
    FUNC3(&sys->control, &cmd);
}