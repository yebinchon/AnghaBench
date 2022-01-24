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
struct TYPE_8__ {TYPE_1__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
struct TYPE_9__ {int /*<<< orphan*/  mouse; } ;
typedef  TYPE_3__ vout_control_cmd_t ;
typedef  int /*<<< orphan*/  vlc_mouse_t ;
struct TYPE_7__ {int /*<<< orphan*/  control; int /*<<< orphan*/  dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_CONTROL_MOUSE_STATE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

void FUNC3(vout_thread_t *vout, const vlc_mouse_t *mouse)
{
    FUNC0(!vout->p->dummy);
    FUNC0(mouse);
    vout_control_cmd_t cmd;
    FUNC2(&cmd, VOUT_CONTROL_MOUSE_STATE);
    cmd.mouse = *mouse;

    FUNC1(&vout->p->control, &cmd);
}