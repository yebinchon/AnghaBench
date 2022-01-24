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
typedef  scalar_t__ vlc_tick_t ;
struct TYPE_13__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ audio_output_t ;
struct TYPE_12__ {scalar_t__ i_read; scalar_t__ i_write; } ;
struct TYPE_11__ {scalar_t__ i_us; scalar_t__ i_latency_us; } ;
struct TYPE_14__ {int /*<<< orphan*/  lock; TYPE_2__ circular; int /*<<< orphan*/  i_samples_written; TYPE_1__ smoothpos; scalar_t__ b_error; scalar_t__ b_passthrough; } ;
typedef  TYPE_4__ aout_sys_t ;
typedef  int /*<<< orphan*/  JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 () ; 

__attribute__((used)) static int
FUNC11( audio_output_t *p_aout, vlc_tick_t *restrict p_delay )
{
    aout_sys_t *p_sys = p_aout->sys;
    vlc_tick_t i_audiotrack_us;
    JNIEnv *env;

    if( p_sys->b_passthrough )
        return -1;

    FUNC8( &p_sys->lock );

    if( p_sys->b_error || !p_sys->i_samples_written || !( env = FUNC5() ) )
        goto bailout;

    i_audiotrack_us = FUNC1( env, p_aout );

    if( i_audiotrack_us <= 0 )
        i_audiotrack_us = FUNC0(env, p_aout );

/* Debug log for both delays */
#if 0
{
    vlc_tick_t i_written_us = FRAMES_TO_US( p_sys->i_samples_written );
    vlc_tick_t i_ts_us = AudioTrack_GetTimestampPositionUs( env, p_aout );
    vlc_tick_t i_smooth_us = 0;

    if( i_ts_us > 0 )
        i_smooth_us = AudioTrack_GetSmoothPositionUs(env, p_aout );
    else if ( p_sys->smoothpos.i_us != 0 )
        i_smooth_us = p_sys->smoothpos.i_us + vlc_tick_now()
            - p_sys->smoothpos.i_latency_us;

    msg_Err( p_aout, "TimeGet: TimeStamp: %lld, Smooth: %lld (latency: %lld)",
                    i_ts_us ? i_written_us - i_ts_us : 0,
                    i_smooth_us ? i_written_us - i_smooth_us : 0,
                    p_sys->smoothpos.i_latency_us );
}
#endif

    if( i_audiotrack_us > 0 )
    {
        /* AudioTrack delay */
        vlc_tick_t i_delay = FUNC4( p_sys->i_samples_written )
                        - i_audiotrack_us;
        if( i_delay >= 0 )
        {
            /* Circular buffer delay */
            i_delay += FUNC3( p_sys->circular.i_write
                                    - p_sys->circular.i_read );
            *p_delay = i_delay;
            FUNC9( &p_sys->lock );
            return 0;
        }
        else
        {
            FUNC7( p_aout, "timing screwed, reset positions" );
            FUNC2( env, p_aout );
        }
    }

bailout:
    FUNC9( &p_sys->lock );
    return -1;
}