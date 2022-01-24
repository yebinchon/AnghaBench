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
struct TYPE_8__ {TYPE_3__* p; } ;
typedef  TYPE_2__ vout_thread_t ;
struct TYPE_7__ {int /*<<< orphan*/  window; } ;
struct TYPE_9__ {int /*<<< orphan*/  display_lock; TYPE_1__ display_cfg; int /*<<< orphan*/  original; int /*<<< orphan*/ * display; int /*<<< orphan*/  window_lock; } ;
typedef  TYPE_3__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC6(vout_thread_t *vout)
{
    vout_thread_sys_t *sys = vout->p;
    unsigned width, height;

    FUNC1(&sys->window_lock);

    FUNC2(&sys->display_lock);
    if (sys->display != NULL) {
        FUNC4(vout, &sys->original, &width, &height);
        FUNC3(&sys->display_lock);

        FUNC0(vout, "requested window size: %ux%u", width, height);
        FUNC5(sys->display_cfg.window, width, height);
    } else
        FUNC3(&sys->display_lock);
}