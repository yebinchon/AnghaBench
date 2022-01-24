#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
struct TYPE_11__ {int type; int /*<<< orphan*/  viewpoint; int /*<<< orphan*/  mouse; int /*<<< orphan*/  boolean; int /*<<< orphan*/ * string; } ;
typedef  TYPE_3__ vout_control_cmd_t ;
struct TYPE_9__ {int /*<<< orphan*/  display_lock; int /*<<< orphan*/  display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
#define  VOUT_CONTROL_CHANGE_FILTERS 131 
#define  VOUT_CONTROL_CHANGE_INTERLACE 130 
#define  VOUT_CONTROL_MOUSE_STATE 129 
#define  VOUT_CONTROL_VIEWPOINT 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC6(vout_thread_t *vout, vout_control_cmd_t cmd)
{
    switch(cmd.type) {
    case VOUT_CONTROL_CHANGE_FILTERS:
        FUNC0(vout, NULL, cmd.string, NULL, false);
        break;
    case VOUT_CONTROL_CHANGE_INTERLACE:
        FUNC0(vout, NULL, NULL, &cmd.boolean, false);
        break;
    case VOUT_CONTROL_MOUSE_STATE:
        FUNC1(vout, &cmd.mouse);
        break;
    case VOUT_CONTROL_VIEWPOINT:
        FUNC2(&vout->p->display_lock);
        FUNC4(vout->p->display, &cmd.viewpoint);
        FUNC3(&vout->p->display_lock);
        break;
    default:
        break;
    }
    FUNC5(&cmd);
}