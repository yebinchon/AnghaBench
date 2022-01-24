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
struct TYPE_7__ {TYPE_3__* sys; } ;
struct TYPE_8__ {TYPE_1__ owner; } ;
typedef  TYPE_2__ vout_window_t ;
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_9__ {int /*<<< orphan*/ * vout; } ;
typedef  TYPE_3__ vout_display_window_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

void FUNC3(vout_window_t *window)
{
    vout_display_window_t *state = window->owner.sys;
    vout_thread_t *vout = state->vout;

    FUNC2(window);
    FUNC1(vout, "window-fullscreen-output");
    FUNC1(vout, "window-fullscreen");
    FUNC1(vout, "window-state");
    FUNC0(state);
}