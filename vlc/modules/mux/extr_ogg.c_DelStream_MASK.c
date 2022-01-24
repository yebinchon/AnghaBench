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
struct TYPE_14__ {int /*<<< orphan*/  p_access; TYPE_2__* p_sys; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_15__ {int i_del_streams; int /*<<< orphan*/  i_add_streams; TYPE_4__** pp_del_streams; int /*<<< orphan*/  i_pos; } ;
typedef  TYPE_2__ sout_mux_sys_t ;
struct TYPE_16__ {int /*<<< orphan*/ * p_sys; int /*<<< orphan*/  p_fifo; } ;
typedef  TYPE_3__ sout_input_t ;
struct TYPE_17__ {struct TYPE_17__* p_oggds_header; int /*<<< orphan*/  b_new; int /*<<< orphan*/  i_length; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  os; } ;
typedef  TYPE_4__ ogg_stream_t ;
typedef  int /*<<< orphan*/  block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_4__** FUNC7 (TYPE_4__**,int) ; 

__attribute__((used)) static void FUNC8( sout_mux_t *p_mux, sout_input_t *p_input )
{
    sout_mux_sys_t *p_sys  = p_mux->p_sys;
    ogg_stream_t   *p_stream = (ogg_stream_t*)p_input->p_sys;
    block_t *p_og;

    FUNC5( p_mux, "removing input" );

    /* flush all remaining data */
    if( p_input->p_sys )
    {
        if( !p_stream->b_new )
        {
            while( FUNC4( p_input->p_fifo ) )
                FUNC1( p_mux, p_input );
        }

        if( !p_stream->b_new &&
            ( p_og = FUNC3( p_mux, &p_stream->os, 0 ) ) )
        {
            FUNC2( p_og, p_stream->i_dts, p_stream->i_length );
            p_sys->i_pos += FUNC6( p_mux->p_access, p_og );
        }

        /* move input in delete queue */
        if( !p_stream->b_new )
        {
            p_sys->pp_del_streams = FUNC7( p_sys->pp_del_streams,
                        (p_sys->i_del_streams + 1) * sizeof(ogg_stream_t *) );
            p_sys->pp_del_streams[p_sys->i_del_streams++] = p_stream;
        }
        else
        {
            /* wasn't already added so get rid of it */
            FUNC0( p_stream->p_oggds_header );
            FUNC0( p_stream );
            p_sys->i_add_streams--;
        }
    }

    p_input->p_sys = NULL;
}