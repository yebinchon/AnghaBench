#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_4__* p; } ;
typedef  TYPE_3__ vout_thread_t ;
struct TYPE_7__ {unsigned int num; unsigned int den; } ;
struct TYPE_8__ {TYPE_1__ dar; } ;
struct TYPE_10__ {int /*<<< orphan*/  display_lock; int /*<<< orphan*/ * display; int /*<<< orphan*/  window_lock; TYPE_2__ source; int /*<<< orphan*/  dummy; } ;
typedef  TYPE_4__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

void FUNC5(vout_thread_t *vout,
                                   unsigned dar_num, unsigned dar_den)
{
    vout_thread_sys_t *sys = vout->p;
    FUNC0(!sys->dummy);

    FUNC1(&sys->window_lock);
    sys->source.dar.num = dar_num;
    sys->source.dar.den = dar_den;

    FUNC4(vout);

    FUNC1(&sys->display_lock);
    FUNC2(&sys->window_lock);

    if (sys->display != NULL)
        FUNC3(sys->display, dar_num, dar_den);
    FUNC2(&sys->display_lock);
}