#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_9__ {int i_output; int /*<<< orphan*/  fmt; int /*<<< orphan*/  p_module; } ;
struct TYPE_8__ {TYPE_5__ splitter; int /*<<< orphan*/  lock; struct vlc_vidsplit_part* parts; } ;
typedef  TYPE_2__ vout_display_sys_t ;
struct vlc_vidsplit_part {int /*<<< orphan*/  lock; int /*<<< orphan*/  window; TYPE_1__* display; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;
    int n = sys->splitter.i_output;

    for (int i = 0; i < n; i++) {
        struct vlc_vidsplit_part *part = &sys->parts[i];
        vout_display_t *display;

        FUNC6(&part->lock);
        display = part->display;
        part->display = NULL;
        FUNC5(&part->lock);

        if (display != NULL)
            FUNC7(display);

        FUNC9(part->window);
        FUNC8(part->window);
        FUNC4(&part->lock);
    }

    FUNC0(&sys->splitter, sys->splitter.p_module);
    FUNC1(&sys->splitter.fmt);
    FUNC2(&sys->lock);
    FUNC3(&sys->splitter);
}