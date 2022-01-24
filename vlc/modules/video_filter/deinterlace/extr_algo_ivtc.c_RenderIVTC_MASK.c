#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picture_t ;
struct TYPE_15__ {int* pi_scores; int* pi_final_scores; } ;
typedef  TYPE_2__ ivtc_sys_t ;
struct TYPE_16__ {TYPE_4__* p_sys; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_14__ {int /*<<< orphan*/ ** pp_history; } ;
struct TYPE_17__ {TYPE_1__ context; TYPE_2__ ivtc; } ;
typedef  TYPE_4__ filter_sys_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FIELD_PAIR_TNBN ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC12( filter_t *p_filter, picture_t *p_dst, picture_t *p_pic )
{
    FUNC9(p_pic);
    FUNC10( p_filter != NULL );
    FUNC10( p_dst != NULL );

    filter_sys_t *p_sys = p_filter->p_sys;
    ivtc_sys_t *p_ivtc  = &p_sys->ivtc;

    picture_t *p_prev = p_sys->context.pp_history[0];
    picture_t *p_curr = p_sys->context.pp_history[1];
    picture_t *p_next = p_sys->context.pp_history[2];

    /* If the history mechanism has failed, we have nothing to do. */
    if( !p_next )
        return VLC_EGENERIC;

    /* Slide algorithm-specific histories */
    FUNC5( p_filter );

    /* Filter if we have all the pictures we need.
       Note that we always have p_next at this point. */
    if( p_prev && p_curr )
    {
        /* Update raw data for motion, field repeats, interlace scores... */
        FUNC6( p_filter );

        /* Detect soft telecine.

           Enter/exit IVTC_MODE_TELECINED_NTSC_SOFT when needed.
        */
        FUNC8( p_filter );

        /* Detect hard telecine.

           Enter/exit IVTC_MODE_TELECINED_NTSC_HARD when needed.

           If we happen to be running in IVTC_MODE_TELECINED_NTSC_SOFT,
           we nevertheless let the algorithms see for themselves that
           the stream is progressive. This doesn't break anything,
           and this way the full filter state gets updated at each frame.

           See the individual function docs for details.
        */
        FUNC2( p_filter );
        FUNC3( p_filter );
        FUNC4( p_filter ); /* pick winner */
        FUNC1( p_filter ); /* update filter state */

        /* Now we can... */
        bool b_have_output_frame = FUNC7( p_filter, p_dst );

        if( b_have_output_frame )
            return VLC_SUCCESS;
        else
            return VLC_EGENERIC; /* Signal the caller not to expect a frame */
    }
    else if( !p_prev && !p_curr ) /* first frame */
    {
        /* Render the first frame as-is, so that a picture appears immediately.

           We will also do some init for the filter. This score will become
           TPBP by the time the actual filter starts. Note that the sliding of
           final scores only starts when the filter has started (third frame).
        */
        int i_score = FUNC0( p_next, p_next );
        p_ivtc->pi_scores[FIELD_PAIR_TNBN] = i_score;
        p_ivtc->pi_final_scores[0]         = i_score;

        FUNC11( p_dst, p_next );
        return VLC_SUCCESS;
    }
    else /* second frame */
    {
        /* If the history sliding mechanism works correctly,
           the only remaining possibility is that: */
        FUNC10( p_curr && !p_prev );

        /* We need three frames for the cadence detector to work, so we just
           do some init for the detector and pass the frame through.
           Passthrough for second frame, too, works better than drop
           for some still-image DVD menus.

           Now that we have two frames, we can run a full IVTCLowLevelDetect().

           The interlace scores from here will become TCBC, TCBP and TPBC
           when the filter starts. The score for the current TCBC has already
           been computed at the first frame, and slid into place at the start
           of this frame (by IVTCFrameInit()).
        */
        FUNC6( p_filter );

        /* Note that the sliding mechanism for output scores only starts
           when the actual filter does.
        */
        p_ivtc->pi_final_scores[1] = p_ivtc->pi_scores[FIELD_PAIR_TNBN];

        FUNC11( p_dst, p_next );
        return VLC_SUCCESS;
    }
}