#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* p; } ;
typedef  TYPE_1__ vout_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/  display_lock; int /*<<< orphan*/ * display; int /*<<< orphan*/  dummy; } ;
typedef  TYPE_2__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

void FUNC4(vout_thread_t *vout,
                            unsigned width, unsigned height)
{
    vout_thread_sys_t *sys = vout->p;

    FUNC0(!sys->dummy);

    /* DO NOT call this outside the vout window callbacks */
    FUNC1(&sys->display_lock);
    if (sys->display != NULL)
        FUNC3(sys->display, width, height);
    FUNC2(&sys->display_lock);
}