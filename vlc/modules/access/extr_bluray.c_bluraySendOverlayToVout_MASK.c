#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  subpicture_t ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ demux_t ;
struct TYPE_9__ {int /*<<< orphan*/  p_out; } ;
typedef  TYPE_2__ demux_sys_t ;
struct TYPE_10__ {int b_on_vout; int /*<<< orphan*/  status; int /*<<< orphan*/ * p_updater; } ;
typedef  TYPE_3__ bluray_overlay_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLURAY_ES_OUT_CONTROL_CREATE_OVERLAY ; 
 int /*<<< orphan*/  Outdated ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(demux_t *p_demux, int plane, bluray_overlay_t *p_ov)
{
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC0(p_ov != NULL);
    FUNC0(!p_ov->b_on_vout);

    if (p_ov->p_updater) {
        FUNC5(p_ov->p_updater);
        p_ov->p_updater = NULL;
    }

    subpicture_t *p_pic = FUNC1(p_ov);
    if (!p_pic) {
        FUNC3(p_demux, "bluraySubpictureCreate() failed");
        return;
    }

    /*
     * After this point, the picture should not be accessed from the demux thread,
     * as it is held by the vout thread.
     * This must be done only once per subpicture, ie. only once between each
     * blurayInitOverlay & blurayCloseOverlay call.
     */
    int ret = FUNC2(p_sys->p_out, BLURAY_ES_OUT_CONTROL_CREATE_OVERLAY,
                             plane, p_pic);
    if (ret != VLC_SUCCESS)
    {
        FUNC5(p_ov->p_updater);
        p_ov->p_updater = NULL;
        p_ov->b_on_vout = false;
        FUNC4(p_pic);
        return;
    }
    p_ov->b_on_vout = true;

    /*
     * Mark the picture as Outdated, as it contains no region for now.
     * This will make the subpicture_updater_t call pf_update
     */
    p_ov->status = Outdated;
}