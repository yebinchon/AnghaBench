#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_generic_event_t ;
struct TYPE_11__ {TYPE_2__* sys; } ;
typedef  TYPE_1__ vout_display_t ;
struct TYPE_12__ {int /*<<< orphan*/  conn; TYPE_4__* current; int /*<<< orphan*/  vdp; int /*<<< orphan*/  queue; } ;
typedef  TYPE_2__ vout_display_sys_t ;
struct TYPE_13__ {int /*<<< orphan*/  surface; } ;
typedef  TYPE_3__ vlc_vdp_output_surface_t ;
struct TYPE_14__ {TYPE_3__* p_sys; } ;
typedef  TYPE_4__ picture_t ;
typedef  int /*<<< orphan*/  VdpTime ;
typedef  scalar_t__ VdpStatus ;

/* Variables and functions */
 scalar_t__ VDP_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(vout_display_t *vd, picture_t *pic)
{
    vout_display_sys_t *sys = vd->sys;
    xcb_generic_event_t *ev;

    picture_t *current = sys->current;
    if (current != NULL)
    {
        vlc_vdp_output_surface_t *psys = current->p_sys;
        VdpTime pts;
        VdpStatus err;

        err = FUNC5(sys->vdp,
                                              sys->queue, psys->surface, &pts);
        if (err != VDP_STATUS_OK)
        {
            FUNC1(vd, "presentation queue blocking error: %s",
                    FUNC4(sys->vdp, err));
            goto out;
        }
        FUNC3(current);
    }

    sys->current = FUNC2(pic);
out:
    /* Drain the event queue. TODO: remove sys->conn completely */

    while ((ev = FUNC6(sys->conn)) != NULL)
        FUNC0(ev);
}