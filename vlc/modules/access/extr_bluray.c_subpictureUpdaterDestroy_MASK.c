#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * p_sys; } ;
struct TYPE_7__ {TYPE_1__ updater; } ;
typedef  TYPE_2__ subpicture_t ;
typedef  int /*<<< orphan*/  bluray_spu_updater_sys_t ;
struct TYPE_8__ {int b_on_vout; int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ bluray_overlay_t ;

/* Variables and functions */
 int /*<<< orphan*/  ToDisplay ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(subpicture_t *p_subpic)
{
    bluray_spu_updater_sys_t *p_upd_sys = p_subpic->updater.p_sys;
    bluray_overlay_t         *p_overlay = FUNC1(p_upd_sys);

    if (p_overlay) {
        /* vout is closed (seek, new clip, ?). Overlay must be redrawn. */
        p_overlay->status = ToDisplay;
        p_overlay->b_on_vout = false;
        FUNC2(p_upd_sys);
    }

    FUNC0(p_upd_sys);
}