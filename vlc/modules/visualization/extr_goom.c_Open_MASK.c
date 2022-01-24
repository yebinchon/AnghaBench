#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
struct TYPE_13__ {int i_width; int i_visible_width; int i_height; int i_visible_height; int i_sar_num; int i_sar_den; int /*<<< orphan*/  i_chroma; } ;
struct TYPE_17__ {scalar_t__ i_speed; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; int /*<<< orphan*/  i_channels; int /*<<< orphan*/  date; scalar_t__ i_blocks; TYPE_11__ fmt; } ;
typedef  TYPE_3__ goom_thread_t ;
struct TYPE_14__ {int /*<<< orphan*/  i_format; int /*<<< orphan*/  i_rate; } ;
struct TYPE_16__ {TYPE_12__ audio; } ;
struct TYPE_15__ {TYPE_12__ audio; } ;
struct TYPE_18__ {int /*<<< orphan*/  pf_flush; int /*<<< orphan*/  pf_audio_filter; TYPE_2__ fmt_in; TYPE_1__ fmt_out; TYPE_3__* p_sys; } ;
typedef  TYPE_4__ filter_t ;

/* Variables and functions */
 int /*<<< orphan*/  DoWork ; 
 int /*<<< orphan*/  Flush ; 
 scalar_t__ MAX_SPEED ; 
 int /*<<< orphan*/  Thread ; 
 int /*<<< orphan*/  VLC_CODEC_FL32 ; 
 int /*<<< orphan*/  VLC_CODEC_RGB32 ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  VLC_THREAD_PRIORITY_LOW ; 
 int /*<<< orphan*/  VLC_TICK_0 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_4__*,TYPE_11__*) ; 
 TYPE_3__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,char*) ; 
 int FUNC7 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14( vlc_object_t *p_this )
{
    filter_t       *p_filter = (filter_t *)p_this;
    goom_thread_t  *p_thread;

    /* Create goom thread */
    p_filter->p_sys = p_thread = FUNC2( 1, sizeof(*p_thread) );

    const int width  = FUNC7( p_filter, "goom-width" );
    const int height = FUNC7( p_filter, "goom-height" );

    p_thread->fmt.i_width = p_thread->fmt.i_visible_width = width;
    p_thread->fmt.i_height = p_thread->fmt.i_visible_height = height;
    p_thread->fmt.i_chroma = VLC_CODEC_RGB32;
    p_thread->fmt.i_sar_num = p_thread->fmt.i_sar_den = 1;

    p_thread->p_vout = FUNC1( p_filter, &p_thread->fmt );
    if( p_thread->p_vout == NULL )
    {
        FUNC6( p_filter, "no suitable vout module" );
        FUNC5( p_thread );
        return VLC_EGENERIC;
    }

    p_thread->i_speed = MAX_SPEED - FUNC7( p_filter, "goom-speed" );
    if( p_thread->i_speed < 0 )
        p_thread->i_speed = 0;

    FUNC12( &p_thread->lock );
    FUNC10( &p_thread->wait );

    p_thread->i_blocks = 0;
    FUNC3( &p_thread->date, p_filter->fmt_in.audio.i_rate, 1 );
    FUNC4( &p_thread->date, VLC_TICK_0 );
    p_thread->i_channels = FUNC0( &p_filter->fmt_in.audio );

    if( FUNC8( &p_thread->thread,
                   Thread, p_thread, VLC_THREAD_PRIORITY_LOW ) )
    {
        FUNC6( p_filter, "cannot launch goom thread" );
        FUNC11( &p_thread->lock );
        FUNC9( &p_thread->wait );
        FUNC13( p_thread->p_vout );
        FUNC5( p_thread );
        return VLC_EGENERIC;
    }

    p_filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    p_filter->fmt_out.audio = p_filter->fmt_in.audio;
    p_filter->pf_audio_filter = DoWork;
    p_filter->pf_flush = Flush;
    return VLC_SUCCESS;
}