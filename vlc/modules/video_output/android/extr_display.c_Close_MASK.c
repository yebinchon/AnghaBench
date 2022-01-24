#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_10__ {int /*<<< orphan*/  p_awh; scalar_t__ embed; scalar_t__ p_sub_window; struct TYPE_10__* p_sub_buffer_bounds; scalar_t__ p_spu_blend; scalar_t__ p_sub_pic; scalar_t__ p_prepared_pic; scalar_t__ p_window; scalar_t__ b_displayed; scalar_t__ pool; scalar_t__ b_has_subpictures; } ;
typedef  TYPE_2__ vout_display_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static void FUNC9(vout_display_t *vd)
{
    vout_display_sys_t *sys = vd->sys;

    /* Check if SPU regions have been properly cleared, and clear them if they
     * were not. */
    if (sys->b_has_subpictures)
    {
        FUNC4(vd, NULL);
        FUNC2(sys, sys->p_sub_window, sys->p_sub_pic);
    }

    if (sys->pool)
        FUNC8(sys->pool);

    if (sys->p_window)
    {
        if (sys->b_displayed)
            FUNC3(vd);
        FUNC1(vd, sys->p_window);
    }

    if (sys->p_prepared_pic)
        FUNC7(sys->p_prepared_pic);
    if (sys->p_sub_pic)
        FUNC7(sys->p_sub_pic);
    if (sys->p_spu_blend)
        FUNC5(sys->p_spu_blend);
    FUNC6(sys->p_sub_buffer_bounds);
    if (sys->p_sub_window)
        FUNC1(vd, sys->p_sub_window);

    if (sys->embed)
        FUNC0(sys->p_awh, 0, 0, 0, 0, 0, 0);

    FUNC6(sys);
}