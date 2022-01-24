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
struct TYPE_5__ {int /*<<< orphan*/  window; } ;
struct TYPE_7__ {int window_enabled; int /*<<< orphan*/  window_lock; TYPE_1__ display_cfg; int /*<<< orphan*/ * dec_device; } ;
typedef  TYPE_3__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;
    FUNC1(&sys->window_lock);
    if (sys->dec_device)
    {
        FUNC0(sys->dec_device);
        sys->dec_device = NULL;
    }
    if (sys->window_enabled) {
        FUNC3(sys->display_cfg.window);
        sys->window_enabled = false;
    }
    FUNC2(&sys->window_lock);
}