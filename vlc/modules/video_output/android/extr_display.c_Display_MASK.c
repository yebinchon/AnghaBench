#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_3__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct TYPE_10__ {int b_displayed; scalar_t__ p_sub_pic; int /*<<< orphan*/  p_sub_window; TYPE_1__* p_window; } ;
typedef  TYPE_3__ vout_display_sys_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_sys; } ;
typedef  TYPE_4__ picture_t ;
struct TYPE_8__ {scalar_t__ b_opaque; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC2(vout_display_t *vd, picture_t *picture)
{
    vout_display_sys_t *sys = vd->sys;

    if (sys->p_window->b_opaque)
        FUNC0(picture->p_sys, true);

    if (sys->p_sub_pic)
        FUNC1(sys, sys->p_sub_window, sys->p_sub_pic);

    sys->b_displayed = true;
}