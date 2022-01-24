#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ pf_get_cc; int /*<<< orphan*/  fmt_out; int /*<<< orphan*/  fmt_in; TYPE_2__* (* pf_packetize ) (TYPE_1__*,TYPE_2__**) ;} ;
struct decoder_owner {scalar_t__ error; TYPE_1__* p_packetizer; int /*<<< orphan*/ * p_sout; int /*<<< orphan*/  lock; int /*<<< orphan*/  i_preroll_end; int /*<<< orphan*/  reload; TYPE_1__ dec; } ;
typedef  enum reload { ____Placeholder_reload } reload ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_16__ {scalar_t__ i_buffer; int i_flags; struct TYPE_16__* p_next; } ;
typedef  TYPE_2__ block_t ;

/* Variables and functions */
 int BLOCK_FLAG_CORE_PRIVATE_RELOADED ; 
 int /*<<< orphan*/  FUNC0 (struct decoder_owner*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (struct decoder_owner*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (struct decoder_owner*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct decoder_owner*,TYPE_1__*) ; 
 int RELOAD_DECODER ; 
 int RELOAD_DECODER_AOUT ; 
 int /*<<< orphan*/  RELOAD_NO_REQUEST ; 
 scalar_t__ VLC_SUCCESS ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,char*) ; 
 TYPE_2__* FUNC11 (TYPE_1__*,TYPE_2__**) ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15( struct decoder_owner *p_owner, block_t *p_block )
{
    decoder_t *p_dec = &p_owner->dec;

    if( p_owner->error )
        goto error;

    /* Here, the atomic doesn't prevent to miss a reload request.
     * DecoderThread_ProcessInput() can still be called after the decoder module or the
     * audio output requested a reload. This will only result in a drop of an
     * input block or an output buffer. */
    enum reload reload;
    if( ( reload = FUNC5( &p_owner->reload, RELOAD_NO_REQUEST ) ) )
    {
        FUNC10( p_dec, "Reloading the decoder module%s",
                  reload == RELOAD_DECODER_AOUT ? " and the audio output" : "" );

        if( FUNC2( p_owner, false, &p_dec->fmt_in, reload ) != VLC_SUCCESS )
            goto error;
    }

    bool packetize = p_owner->p_packetizer != NULL;
    if( p_block )
    {
        if( p_block->i_buffer <= 0 )
            goto error;

        FUNC13( &p_owner->lock );
        FUNC3( &p_owner->i_preroll_end, p_block );
        FUNC14( &p_owner->lock );
        if( FUNC12( p_block->i_flags & BLOCK_FLAG_CORE_PRIVATE_RELOADED ) )
        {
            /* This block has already been packetized */
            packetize = false;
        }
    }

#ifdef ENABLE_SOUT
    if( p_owner->p_sout != NULL )
    {
        DecoderThread_ProcessSout( p_owner, p_block );
        return;
    }
#endif
    if( packetize )
    {
        block_t *p_packetized_block;
        block_t **pp_block = p_block ? &p_block : NULL;
        decoder_t *p_packetizer = p_owner->p_packetizer;

        while( (p_packetized_block =
                p_packetizer->pf_packetize( p_packetizer, pp_block ) ) )
        {
            if( !FUNC8( &p_dec->fmt_in, &p_packetizer->fmt_out ) )
            {
                FUNC9( p_dec, "restarting module due to input format change");

                /* Drain the decoder module */
                FUNC0( p_owner, NULL );

                if( FUNC2( p_owner, false, &p_packetizer->fmt_out,
                                          RELOAD_DECODER ) != VLC_SUCCESS )
                {
                    FUNC6( p_packetized_block );
                    return;
                }
            }

            if( p_packetizer->pf_get_cc )
                FUNC4( p_owner, p_packetizer );

            while( p_packetized_block )
            {
                block_t *p_next = p_packetized_block->p_next;
                p_packetized_block->p_next = NULL;

                FUNC0( p_owner, p_packetized_block );
                if( p_owner->error )
                {
                    FUNC6( p_next );
                    return;
                }

                p_packetized_block = p_next;
            }
        }
        /* Drain the decoder after the packetizer is drained */
        if( !pp_block )
            FUNC0( p_owner, NULL );
    }
    else
        FUNC0( p_owner, p_block );
    return;

error:
    if( p_block )
        FUNC7( p_block );
}