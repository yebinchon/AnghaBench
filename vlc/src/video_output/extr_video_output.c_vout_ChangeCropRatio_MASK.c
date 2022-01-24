#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_5__* p; } ;
typedef  TYPE_4__ vout_thread_t ;
struct TYPE_8__ {unsigned int num; unsigned int den; } ;
struct TYPE_9__ {int /*<<< orphan*/  mode; TYPE_1__ ratio; } ;
struct TYPE_10__ {TYPE_2__ crop; } ;
struct TYPE_12__ {int /*<<< orphan*/  display_lock; int /*<<< orphan*/ * display; int /*<<< orphan*/  window_lock; TYPE_3__ source; int /*<<< orphan*/  dummy; } ;
typedef  TYPE_5__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_CROP_NONE ; 
 int /*<<< orphan*/  VOUT_CROP_RATIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

void FUNC5(vout_thread_t *vout, unsigned num, unsigned den)
{
    vout_thread_sys_t *sys = vout->p;
    FUNC0(!sys->dummy);

    FUNC1(&sys->window_lock);
    if (num != 0 && den != 0) {
        sys->source.crop.mode = VOUT_CROP_RATIO;
        sys->source.crop.ratio.num = num;
        sys->source.crop.ratio.den = den;
    } else
        sys->source.crop.mode = VOUT_CROP_NONE;

    FUNC4(vout);

    FUNC1(&sys->display_lock);
    FUNC2(&sys->window_lock);

    if (sys->display != NULL)
        FUNC3(sys->display, num, den, 0, 0, 0, 0);
    FUNC2(&sys->display_lock);
}