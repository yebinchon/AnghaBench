#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
typedef  TYPE_3__ vout_window_cfg_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_format; } ;
struct TYPE_14__ {TYPE_10__ audio; } ;
struct TYPE_13__ {TYPE_10__ audio; } ;
struct TYPE_16__ {int /*<<< orphan*/  pf_audio_filter; TYPE_2__ fmt_in; TYPE_1__ fmt_out; TYPE_5__* p_sys; } ;
typedef  TYPE_4__ filter_t ;
struct TYPE_17__ {int /*<<< orphan*/  thread; int /*<<< orphan*/ * fifo; int /*<<< orphan*/ * gl; int /*<<< orphan*/  wind_param; int /*<<< orphan*/  f_rotationIncrement; scalar_t__ f_rotationAngle; int /*<<< orphan*/ * p_prev_s16_buff; scalar_t__ i_prev_nb_samples; int /*<<< orphan*/  i_channels; } ;
typedef  TYPE_5__ filter_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  DoWork ; 
 int /*<<< orphan*/  ROTATION_INCREMENT ; 
 int /*<<< orphan*/  Thread ; 
 int /*<<< orphan*/  VLC_CODEC_FL32 ; 
 int VLC_EGENERIC ; 
 int VLC_ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_VIDEO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_10__*) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(vlc_object_t * p_this)
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;

    p_sys = p_filter->p_sys = (filter_sys_t*)FUNC5(sizeof(*p_sys));
    if (p_sys == NULL)
        return VLC_ENOMEM;

    /* Create the object for the thread */
    p_sys->i_channels = FUNC1(&p_filter->fmt_in.audio);
    p_sys->i_prev_nb_samples = 0;
    p_sys->p_prev_s16_buff = NULL;

    p_sys->f_rotationAngle = 0;
    p_sys->f_rotationIncrement = ROTATION_INCREMENT;

    /* Fetch the FFT window parameters */
    FUNC9( FUNC0( p_filter ), &p_sys->wind_param );

    /* Create the FIFO for the audio data. */
    p_sys->fifo = FUNC2();
    if (p_sys->fifo == NULL)
        goto error;

    /* Create the openGL provider */
    vout_window_cfg_t cfg = {
        .width = FUNC6(p_filter, "glspectrum-width"),
        .height = FUNC6(p_filter, "glspectrum-height"),
    };

    p_sys->gl = FUNC8(p_this, &cfg, NULL);
    if (p_sys->gl == NULL)
    {
        FUNC3(p_sys->fifo);
        goto error;
    }

    /* Create the thread */
    if (FUNC7(&p_sys->thread, Thread, p_filter,
                  VLC_THREAD_PRIORITY_VIDEO))
        goto error;

    p_filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio = p_filter->fmt_in.audio;
    p_filter->pf_audio_filter = DoWork;

    return VLC_SUCCESS;

error:
    FUNC4(p_sys);
    return VLC_EGENERIC;
}