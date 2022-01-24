#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ (* pf_addstream ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  pp_inputs; int /*<<< orphan*/  i_nb_inputs; int /*<<< orphan*/  b_waiting_stream; int /*<<< orphan*/  b_add_stream_any_time; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_14__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/  p_fifo; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/ * p_fmt; } ;
typedef  TYPE_2__ sout_input_t ;
typedef  int /*<<< orphan*/  es_format_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 TYPE_2__* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC10 (TYPE_1__*,TYPE_2__*) ; 

sout_input_t *FUNC11( sout_mux_t *p_mux, const es_format_t *p_fmt )
{
    sout_input_t *p_input;

    if( !p_mux->b_add_stream_any_time && !p_mux->b_waiting_stream )
    {
        FUNC9( p_mux, "cannot add a new stream (unsupported while muxing "
                        "to this format). You can try increasing sout-mux-caching value" );
        return NULL;
    }

    FUNC8( p_mux, "adding a new input" );

    /* create a new sout input */
    p_input = FUNC7( sizeof( sout_input_t ) );
    if( !p_input )
        return NULL;

    // FIXME: remove either fmt or p_fmt...
    FUNC5( &p_input->fmt, p_fmt );
    p_input->p_fmt = &p_input->fmt;

    p_input->p_fifo = FUNC2();
    p_input->p_sys  = NULL;

    FUNC0( p_mux->i_nb_inputs, p_mux->pp_inputs, p_input );
    if( p_mux->pf_addstream( p_mux, p_input ) < 0 )
    {
        FUNC9( p_mux, "cannot add this stream" );
        FUNC1( p_mux->i_nb_inputs, p_mux->pp_inputs, p_input );
        FUNC3( p_input->p_fifo );
        FUNC4( &p_input->fmt );
        FUNC6( p_input );
        return NULL;
    }

    return p_input;
}