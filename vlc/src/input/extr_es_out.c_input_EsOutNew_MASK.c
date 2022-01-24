#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  input_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/ * cbs; } ;
typedef  TYPE_1__ es_out_t ;
struct TYPE_6__ {int b_active; int i_pause_date; float rate; int b_buffering; int i_preroll_end; int i_prev_stream_level; TYPE_1__ out; int /*<<< orphan*/  i_master_source_cat; int /*<<< orphan*/  i_group_id; int /*<<< orphan*/  sub; int /*<<< orphan*/  audio; int /*<<< orphan*/  video; int /*<<< orphan*/  es_slaves; int /*<<< orphan*/  es; int /*<<< orphan*/  programs; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * p_input; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ es_out_sys_t ;
typedef  enum vlc_clock_master_source { ____Placeholder_vlc_clock_master_source } vlc_clock_master_source ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIO_ES ; 
 int /*<<< orphan*/  ES_OUT_ES_POLICY_EXCLUSIVE ; 
 int /*<<< orphan*/  ES_OUT_MODE_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  UNKNOWN_ES ; 
#define  VLC_CLOCK_MASTER_AUDIO 129 
#define  VLC_CLOCK_MASTER_MONOTONIC 128 
 TYPE_2__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  es_out_cbs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

es_out_t *FUNC6( input_thread_t *p_input, float rate )
{
    es_out_sys_t *p_sys = FUNC1( 1, sizeof( *p_sys ) );
    if( !p_sys )
        return NULL;

    p_sys->out.cbs = &es_out_cbs;

    FUNC5( &p_sys->lock );
    p_sys->p_input = p_input;

    p_sys->b_active = false;
    p_sys->i_mode   = ES_OUT_MODE_NONE;

    FUNC4(&p_sys->programs);
    FUNC4(&p_sys->es);
    FUNC4(&p_sys->es_slaves);

    /* */
    FUNC0( &p_sys->video, true, p_input, ES_OUT_ES_POLICY_EXCLUSIVE,
                    "video-track-id", "video-track", NULL, NULL );
    FUNC0( &p_sys->audio, true, p_input, ES_OUT_ES_POLICY_EXCLUSIVE,
                    "audio-track-id", "audio-track", "audio-language", "audio" );
    FUNC0( &p_sys->sub,  false, p_input, ES_OUT_ES_POLICY_EXCLUSIVE,
                    "sub-track-id", "sub-track", "sub-language", "sub" );

    p_sys->i_group_id = FUNC2( p_input, "program" );

    enum vlc_clock_master_source master_source =
        FUNC3( p_input, "clock-master" );
    switch( master_source )
    {
        case VLC_CLOCK_MASTER_AUDIO:
            p_sys->i_master_source_cat = AUDIO_ES;
            break;
        case VLC_CLOCK_MASTER_MONOTONIC:
        default:
            p_sys->i_master_source_cat = UNKNOWN_ES;
            break;
    }

    p_sys->i_pause_date = -1;

    p_sys->rate = rate;

    p_sys->b_buffering = true;
    p_sys->i_preroll_end = -1;
    p_sys->i_prev_stream_level = -1;

    return &p_sys->out;
}