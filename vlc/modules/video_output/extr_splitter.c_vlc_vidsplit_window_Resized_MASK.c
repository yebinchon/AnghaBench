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
struct TYPE_4__ {struct vlc_vidsplit_part* sys; } ;
struct TYPE_5__ {TYPE_1__ owner; } ;
typedef  TYPE_2__ vout_window_t ;
struct vlc_vidsplit_part {unsigned int width; unsigned int height; int /*<<< orphan*/  lock; int /*<<< orphan*/ * display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC3(vout_window_t *wnd,
                                        unsigned width, unsigned height)
{
    struct vlc_vidsplit_part *part = wnd->owner.sys;

    FUNC1(&part->lock);
    part->width = width;
    part->height = height;

    if (part->display != NULL)
        FUNC2(part->display, width, height);
    FUNC0(&part->lock);
}