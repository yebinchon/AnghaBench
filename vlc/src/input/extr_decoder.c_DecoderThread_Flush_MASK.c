#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__** pp_decoder; scalar_t__ b_supported; } ;
struct TYPE_8__ {scalar_t__ i_cat; } ;
struct TYPE_9__ {TYPE_2__ fmt_out; int /*<<< orphan*/  (* pf_flush ) (TYPE_3__*) ;} ;
struct decoder_owner {scalar_t__ i_spu_channel; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_preroll_end; scalar_t__ p_vout; scalar_t__ p_aout; int /*<<< orphan*/ * p_sout_input; TYPE_1__ cc; scalar_t__ error; TYPE_3__* p_packetizer; TYPE_3__ dec; } ;
typedef  TYPE_3__ decoder_t ;

/* Variables and functions */
 scalar_t__ AUDIO_ES ; 
 int MAX_CC_DECODERS ; 
 int /*<<< orphan*/  PREROLL_NONE ; 
 scalar_t__ SPU_ES ; 
 scalar_t__ VIDEO_ES ; 
 scalar_t__ VOUT_SPU_CHANNEL_INVALID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static void FUNC10( struct decoder_owner *p_owner )
{
    decoder_t *p_dec = &p_owner->dec;
    decoder_t *p_packetizer = p_owner->p_packetizer;

    if( p_owner->error )
        return;

    if( p_packetizer != NULL && p_packetizer->pf_flush != NULL )
        p_packetizer->pf_flush( p_packetizer );

    if ( p_dec->pf_flush != NULL )
        p_dec->pf_flush( p_dec );

    /* flush CC sub decoders */
    if( p_owner->cc.b_supported )
    {
        for( int i=0; i<MAX_CC_DECODERS; i++ )
        {
            decoder_t *p_subdec = p_owner->cc.pp_decoder[i];
            if( p_subdec && p_subdec->pf_flush )
                p_subdec->pf_flush( p_subdec );
        }
    }

    FUNC6( &p_owner->lock );
#ifdef ENABLE_SOUT
    if ( p_owner->p_sout_input != NULL )
    {
        sout_InputFlush( p_owner->p_sout_input );
    }
#endif
    if( p_dec->fmt_out.i_cat == AUDIO_ES )
    {
        if( p_owner->p_aout )
            FUNC0( p_owner->p_aout );
    }
    else if( p_dec->fmt_out.i_cat == VIDEO_ES )
    {
        if( p_owner->p_vout )
            FUNC8( p_owner->p_vout );
    }
    else if( p_dec->fmt_out.i_cat == SPU_ES )
    {
        if( p_owner->p_vout )
        {
            FUNC1( p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID );
            FUNC9( p_owner->p_vout, p_owner->i_spu_channel );
        }
    }

    p_owner->i_preroll_end = PREROLL_NONE;
    FUNC7( &p_owner->lock );
}