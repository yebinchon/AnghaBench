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
struct TYPE_8__ {int left; int right; int top; int bottom; } ;
struct TYPE_9__ {TYPE_1__ border; int /*<<< orphan*/  mode; } ;
struct TYPE_10__ {TYPE_2__ crop; } ;
struct TYPE_12__ {int /*<<< orphan*/  display_lock; int /*<<< orphan*/ * display; int /*<<< orphan*/  window_lock; TYPE_3__ source; int /*<<< orphan*/  dummy; } ;
typedef  TYPE_5__ vout_thread_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  VOUT_CROP_BORDER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

void FUNC5(vout_thread_t *vout,
                           int left, int top, int right, int bottom)
{
    vout_thread_sys_t *sys = vout->p;
    FUNC0(!sys->dummy);

    if (left < 0)
        left = 0;
    if (top < 0)
        top = 0;
    if (right < 0)
        right = 0;
    if (bottom < 0)
        bottom = 0;

    FUNC1(&sys->window_lock);
    sys->source.crop.mode = VOUT_CROP_BORDER;
    sys->source.crop.border.left = left;
    sys->source.crop.border.right = right;
    sys->source.crop.border.top = top;
    sys->source.crop.border.bottom = bottom;

    FUNC4(vout);

    FUNC1(&sys->display_lock);
    FUNC2(&sys->window_lock);

    if (sys->display != NULL)
        FUNC3(sys->display, 0, 0,
                            left, top, -right, -bottom);
    FUNC2(&sys->display_lock);
}