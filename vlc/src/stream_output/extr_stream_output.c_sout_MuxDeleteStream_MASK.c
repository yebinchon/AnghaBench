#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int b_waiting_stream; scalar_t__ i_nb_inputs; int /*<<< orphan*/  (* pf_delstream ) (TYPE_1__*,TYPE_2__*) ;int /*<<< orphan*/  pp_inputs; int /*<<< orphan*/  (* pf_mux ) (TYPE_1__*) ;} ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_12__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/  p_fifo; } ;
typedef  TYPE_2__ sout_input_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*) ; 

void FUNC9( sout_mux_t *p_mux, sout_input_t *p_input )
{
    int i_index;

    if( p_mux->b_waiting_stream
     && FUNC2( p_input->p_fifo ) > 0 )
    {
        /* We stop waiting, and call the muxer for taking care of the data
         * before we remove this es */
        p_mux->b_waiting_stream = false;
        p_mux->pf_mux( p_mux );
    }

    FUNC1( p_mux->i_nb_inputs, p_mux->pp_inputs, p_input, i_index );
    if( i_index >= 0 )
    {
        /* remove the entry */
        FUNC0( p_mux->i_nb_inputs, p_mux->pp_inputs, i_index );

        p_mux->pf_delstream( p_mux, p_input );

        if( p_mux->i_nb_inputs == 0 )
        {
            FUNC6( p_mux, "no more input streams for this mux" );
        }

        FUNC3( p_input->p_fifo );
        FUNC4( &p_input->fmt );
        FUNC5( p_input );
    }
}