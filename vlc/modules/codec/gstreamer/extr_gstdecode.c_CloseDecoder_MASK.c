#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  int gboolean ;
struct TYPE_8__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_9__ {int b_running; scalar_t__ p_decoder; scalar_t__ p_decode_out; scalar_t__ p_decode_in; scalar_t__ p_decode_src; scalar_t__ p_bus; scalar_t__ p_allocator; scalar_t__ p_que; } ;
typedef  TYPE_2__ decoder_sys_t ;
typedef  int /*<<< orphan*/  GstMessage ;
typedef  int /*<<< orphan*/  GstFlowReturn ;
typedef  int /*<<< orphan*/  GstBuffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
#define  GST_MESSAGE_EOS 128 
 int GST_MESSAGE_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ GST_STATE_CHANGE_SUCCESS ; 
 int /*<<< orphan*/  GST_STATE_NULL ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__,unsigned long long,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char*) ; 

__attribute__((used)) static void FUNC16( vlc_object_t *p_this )
{
    decoder_t *p_dec = ( decoder_t* )p_this;
    decoder_sys_t *p_sys = p_dec->p_sys;
    gboolean b_running = p_sys->b_running;

    if( b_running )
    {
        GstMessage *p_msg;
        GstFlowReturn i_ret;

        p_sys->b_running = false;

        /* Send EOS to the pipeline */
        i_ret = FUNC4(
                FUNC0( p_sys->p_decode_src ));
        FUNC13( p_dec, "app src eos: %s", FUNC10( i_ret ) );

        /* and catch it on the bus with a timeout */
        p_msg = FUNC8( p_sys->p_bus,
                2000000000ULL, GST_MESSAGE_EOS | GST_MESSAGE_ERROR );

        if( p_msg )
        {
            switch( FUNC1( p_msg ) ){
            case GST_MESSAGE_EOS:
                FUNC13( p_dec, "got eos" );
                break;
            default:
                if( FUNC2( p_dec, p_msg ) )
                {
                    FUNC14( p_dec, "pipeline may not close gracefully" );
                    return;
                }
                break;
            }

            FUNC11( p_msg );
        }
        else
            FUNC15( p_dec,
                    "no message, pipeline may not close gracefully" );
    }

    /* Remove any left-over buffers from the queue */
    if( p_sys->p_que )
    {
        GstBuffer *p_buf;
        while( ( p_buf = FUNC5( p_sys->p_que ) ) )
            FUNC7( p_buf );
        FUNC6( p_sys->p_que );
    }

    if( b_running && FUNC9( p_sys->p_decoder, GST_STATE_NULL )
            != GST_STATE_CHANGE_SUCCESS )
        FUNC14( p_dec,
                "failed to change the state to NULL," \
                "pipeline may not close gracefully" );

    if( p_sys->p_allocator )
        FUNC12( p_sys->p_allocator );
    if( p_sys->p_bus )
        FUNC12( p_sys->p_bus );
    if( p_sys->p_decode_src )
        FUNC12( p_sys->p_decode_src );
    if( p_sys->p_decode_in )
        FUNC12( p_sys->p_decode_in );
    if( p_sys->p_decode_out )
        FUNC12( p_sys->p_decode_out );
    if( p_sys->p_decoder )
        FUNC12( p_sys->p_decoder );

    FUNC3( p_sys );
}