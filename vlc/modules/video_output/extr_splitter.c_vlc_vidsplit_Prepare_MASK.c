#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_7__ {int i_output; } ;
struct TYPE_6__ {int /*<<< orphan*/ ** pictures; struct vlc_vidsplit_part* parts; TYPE_4__ splitter; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ vout_display_sys_t ;
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  subpicture_t ;
struct vlc_vidsplit_part {int /*<<< orphan*/  display; int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  picture_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_4__*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(vout_display_t *vd, picture_t *pic,
                                 subpicture_t *subpic, vlc_tick_t date)
{
    vout_display_sys_t *sys = vd->sys;

    FUNC0(pic);
    (void) subpic;

    FUNC2(&sys->lock);
    if (FUNC1(&sys->splitter, sys->pictures, pic)) {
        FUNC3(&sys->lock);

        for (int i = 0; i < sys->splitter.i_output; i++)
            sys->pictures[i] = NULL;
        return;
    }
    FUNC3(&sys->lock);

    for (int i = 0; i < sys->splitter.i_output; i++) {
        struct vlc_vidsplit_part *part = &sys->parts[i];

        FUNC4(&part->lock);
        sys->pictures[i] = FUNC5(part->display,
                                                sys->pictures[i], NULL, date);
    }
}