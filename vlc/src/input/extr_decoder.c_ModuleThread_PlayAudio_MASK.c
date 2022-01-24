#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct decoder_owner {scalar_t__ i_preroll_end; int b_has_data; int /*<<< orphan*/  reload; int /*<<< orphan*/ * p_aout; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_acknowledge; scalar_t__ b_waiting; int /*<<< orphan*/  dec; } ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_5__ {scalar_t__ i_pts; } ;
typedef  TYPE_1__ block_t ;
typedef  int /*<<< orphan*/  audio_output_t ;

/* Variables and functions */
 int AOUT_DEC_CHANGED ; 
 int AOUT_DEC_FAILED ; 
 int /*<<< orphan*/  FUNC0 (struct decoder_owner*) ; 
 scalar_t__ PREROLL_NONE ; 
 int /*<<< orphan*/  RELOAD_DECODER_AOUT ; 
 int /*<<< orphan*/  FUNC1 (struct decoder_owner*) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_INVALID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13( struct decoder_owner *p_owner, block_t *p_audio )
{
    decoder_t *p_dec = &p_owner->dec;

    FUNC4( p_audio != NULL );

    if( p_audio->i_pts == VLC_TICK_INVALID ) // FIXME --VLC_TICK_INVALID verify audio_output/*
    {
        FUNC8( p_dec, "non-dated audio buffer received" );
        FUNC6( p_audio );
        return VLC_EGENERIC;
    }

    FUNC11( &p_owner->lock );
    bool prerolled = p_owner->i_preroll_end != PREROLL_NONE;
    if( prerolled && p_owner->i_preroll_end > p_audio->i_pts )
    {
        FUNC12( &p_owner->lock );
        FUNC6( p_audio );
        return VLC_SUCCESS;
    }

    p_owner->i_preroll_end = PREROLL_NONE;
    FUNC12( &p_owner->lock );

    if( FUNC9(prerolled) )
    {
        FUNC7( p_dec, "end of audio preroll" );

        if( p_owner->p_aout )
            FUNC2( p_owner->p_aout );
    }

    /* */
    /* */
    FUNC11( &p_owner->lock );
    if( p_owner->b_waiting )
    {
        p_owner->b_has_data = true;
        FUNC10( &p_owner->wait_acknowledge );
    }

    /* */
    FUNC0( p_owner );
    FUNC12( &p_owner->lock );

    audio_output_t *p_aout = p_owner->p_aout;

    if( p_aout == NULL )
    {
        FUNC7( p_dec, "discarded audio buffer" );
        FUNC6( p_audio );
        return VLC_EGENERIC;
    }

    int status = FUNC3( p_aout, p_audio );
    if( status == AOUT_DEC_CHANGED )
    {
        /* Only reload the decoder */
        FUNC1( p_owner );
    }
    else if( status == AOUT_DEC_FAILED )
    {
        /* If we reload because the aout failed, we should release it. That
            * way, a next call to ModuleThread_UpdateAudioFormat() won't re-use the
            * previous (failing) aout but will try to create a new one. */
        FUNC5( &p_owner->reload, RELOAD_DECODER_AOUT );
    }
    return VLC_SUCCESS;
}