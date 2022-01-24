#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_15__ {TYPE_5__* p_sys; } ;
typedef  TYPE_4__ demux_t ;
struct TYPE_16__ {scalar_t__ clip_application_type; int /*<<< orphan*/  pl_info_lock; int /*<<< orphan*/  p_out; int /*<<< orphan*/  bluray; TYPE_2__* p_clip_info; TYPE_1__* p_pl_info; } ;
typedef  TYPE_5__ demux_sys_t ;
struct TYPE_14__ {scalar_t__ application_type; } ;
struct TYPE_17__ {TYPE_3__ clip; } ;
struct TYPE_13__ {int video_stream_count; } ;
struct TYPE_12__ {size_t clip_count; TYPE_2__* clips; } ;
typedef  TYPE_6__ CLPI_CL ;

/* Variables and functions */
 scalar_t__ BD_CLIP_APP_TYPE_TS_MAIN_PATH_TIMED_SLIDESHOW ; 
 int /*<<< orphan*/  BLURAY_ES_OUT_CONTROL_DISABLE_LOW_DELAY ; 
 int /*<<< orphan*/  BLURAY_ES_OUT_CONTROL_ENABLE_LOW_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_6__* FUNC2 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(demux_t *p_demux, uint32_t clip)
{
    demux_sys_t *p_sys = p_demux->p_sys;

    FUNC6(&p_sys->pl_info_lock);

    p_sys->p_clip_info = NULL;

    if (p_sys->p_pl_info && clip < p_sys->p_pl_info->clip_count) {

        p_sys->p_clip_info = &p_sys->p_pl_info->clips[clip];

    /* Let's assume a single video track for now.
     * This may brake later, but it's enough for now.
     */
        FUNC0(p_sys->p_clip_info->video_stream_count >= 1);
    }

    CLPI_CL *clpi = FUNC2(p_sys->bluray, clip);
    if(clpi && clpi->clip.application_type != p_sys->clip_application_type)
    {
        if(p_sys->clip_application_type == BD_CLIP_APP_TYPE_TS_MAIN_PATH_TIMED_SLIDESHOW ||
           clpi->clip.application_type == BD_CLIP_APP_TYPE_TS_MAIN_PATH_TIMED_SLIDESHOW)
            FUNC4(p_demux, false, false);

        if(clpi->clip.application_type == BD_CLIP_APP_TYPE_TS_MAIN_PATH_TIMED_SLIDESHOW)
            FUNC5(p_sys->p_out, BLURAY_ES_OUT_CONTROL_ENABLE_LOW_DELAY);
        else
            FUNC5(p_sys->p_out, BLURAY_ES_OUT_CONTROL_DISABLE_LOW_DELAY);
        FUNC1(clpi);
    }

    FUNC7(&p_sys->pl_info_lock);

    FUNC3(p_demux);
}