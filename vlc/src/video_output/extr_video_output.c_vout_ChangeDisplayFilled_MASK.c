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
struct TYPE_6__ {TYPE_3__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
struct TYPE_5__ {int is_display_filled; } ;
struct TYPE_7__ {int /*<<< orphan*/  display_lock; int /*<<< orphan*/ * display; int /*<<< orphan*/  window_lock; TYPE_1__ display_cfg; int /*<<< orphan*/  dummy; } ;
typedef  TYPE_3__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(vout_thread_t *vout, bool is_filled)
{
    vout_thread_sys_t *sys = vout->p;
    FUNC0(!sys->dummy);

    FUNC1(&sys->window_lock);
    sys->display_cfg.is_display_filled = is_filled;
    /* no window size update here */

    FUNC1(&sys->display_lock);
    FUNC2(&sys->window_lock);

    if (sys->display != NULL)
        FUNC3(sys->display, is_filled);
    FUNC2(&sys->display_lock);
}