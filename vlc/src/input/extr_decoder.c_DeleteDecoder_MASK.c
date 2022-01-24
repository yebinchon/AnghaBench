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
typedef  int /*<<< orphan*/  vout_thread_t ;
struct TYPE_9__ {scalar_t__ p_sout_input; } ;
struct decoder_owner {int vout_thread_started; int /*<<< orphan*/  dec; int /*<<< orphan*/  mouse_lock; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_request; int /*<<< orphan*/  wait_acknowledge; int /*<<< orphan*/  wait_fifo; int /*<<< orphan*/ * p_packetizer; scalar_t__ p_description; int /*<<< orphan*/  fmt; int /*<<< orphan*/ * p_vout; int /*<<< orphan*/  i_spu_channel; int /*<<< orphan*/  p_resource; int /*<<< orphan*/ * out_pool; int /*<<< orphan*/  p_aout; TYPE_2__ cc; scalar_t__ p_sout_input; int /*<<< orphan*/  p_fifo; scalar_t__ vctx; } ;
typedef  enum es_format_category_e { ____Placeholder_es_format_category_e } es_format_category_e ;
struct TYPE_8__ {int i_cat; int /*<<< orphan*/  i_codec; } ;
struct TYPE_10__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_3__ decoder_t ;

/* Variables and functions */
#define  AUDIO_ES 132 
#define  DATA_ES 131 
#define  SPU_ES 130 
#define  UNKNOWN_ES 129 
#define  VIDEO_ES 128 
 int /*<<< orphan*/  VOUT_SPU_CHANNEL_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct decoder_owner* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct decoder_owner*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*,char*) ; 
 int /*<<< orphan*/  on_vout_stopped ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22( decoder_t * p_dec )
{
    struct decoder_owner *p_owner = FUNC3( p_dec );

    FUNC10( p_dec, "killing decoder fourcc `%4.4s'",
             (char*)&p_dec->fmt_in.i_codec );

    const enum es_format_category_e i_cat =p_dec->fmt_in.i_cat;
    if ( p_owner->out_pool )
    {
        FUNC12( p_owner->out_pool );
        p_owner->out_pool = NULL;
    }
    FUNC4( p_dec );

    if (p_owner->vctx)
        FUNC18( p_owner->vctx );

    /* Free all packets still in the decoder fifo. */
    FUNC2( p_owner->p_fifo );

    /* Cleanup */
#ifdef ENABLE_SOUT
    if( p_owner->p_sout_input )
    {
        sout_InputDelete( p_owner->p_sout_input );
        if( p_owner->cc.p_sout_input )
            sout_InputDelete( p_owner->cc.p_sout_input );
    }
#endif

    switch( i_cat )
    {
        case AUDIO_ES:
            if( p_owner->p_aout )
            {
                /* TODO: REVISIT gap-less audio */
                FUNC0( p_owner->p_aout );
                FUNC8( p_owner->p_resource, p_owner->p_aout );
            }
            break;
        case VIDEO_ES: {
            vout_thread_t *vout = p_owner->p_vout;

            if (vout != NULL && p_owner->vout_thread_started)
            {
                /* Reset the cancel state that was set before joining the decoder
                 * thread */
                if (p_owner->out_pool)
                    FUNC11( p_owner->out_pool, false );
                FUNC20(vout);
                p_owner->vout_thread_started = false;
                FUNC6(p_owner, on_vout_stopped, vout);
                FUNC9(p_owner->p_resource, vout);
            }
            break;
        }
        case SPU_ES:
        {
            if( p_owner->p_vout )
            {
                FUNC1( p_owner->i_spu_channel != VOUT_SPU_CHANNEL_INVALID );
                FUNC6(p_owner, on_vout_stopped, p_owner->p_vout);

                FUNC21( p_owner->p_vout,
                                                  p_owner->i_spu_channel );
                FUNC19(p_owner->p_vout);
                p_owner->vout_thread_started = false;
            }
            break;
        }
        case DATA_ES:
        case UNKNOWN_ES:
            break;
        default:
            FUNC14();
    }

    FUNC7( &p_owner->fmt );

    if( p_owner->p_description )
        FUNC16( p_owner->p_description );

    FUNC5( p_owner->p_packetizer );

    FUNC15( &p_owner->wait_fifo );
    FUNC15( &p_owner->wait_acknowledge );
    FUNC15( &p_owner->wait_request );
    FUNC17( &p_owner->lock );
    FUNC17( &p_owner->mouse_lock );

    FUNC5( &p_owner->dec );
}