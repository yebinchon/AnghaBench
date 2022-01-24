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
struct TYPE_11__ {int b_add_stream_any_time; int b_waiting_stream; int /*<<< orphan*/ * pf_control; int /*<<< orphan*/  psz_mux; int /*<<< orphan*/ * p_module; int /*<<< orphan*/  i_add_stream_start; int /*<<< orphan*/ * p_sys; int /*<<< orphan*/ * pp_inputs; scalar_t__ i_nb_inputs; int /*<<< orphan*/ * pf_mux; int /*<<< orphan*/ * pf_delstream; int /*<<< orphan*/ * pf_addstream; int /*<<< orphan*/ * p_access; int /*<<< orphan*/  p_cfg; TYPE_2__* p_sout; } ;
typedef  TYPE_1__ sout_mux_t ;
struct TYPE_12__ {int /*<<< orphan*/  i_out_pace_nocontrol; } ;
typedef  TYPE_2__ sout_instance_t ;
typedef  int /*<<< orphan*/  sout_access_out_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MUX_CAN_ADD_STREAM_WHILE_MUXING ; 
 int /*<<< orphan*/  MUX_GET_ADD_STREAM_WAIT ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 char* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

sout_mux_t * FUNC8( sout_instance_t *p_sout, const char *psz_mux,
                          sout_access_out_t *p_access )
{
    sout_mux_t *p_mux;
    char       *psz_next;

    p_mux = FUNC6( p_sout, sizeof( *p_mux ), "mux" );
    if( p_mux == NULL )
        return NULL;

    p_mux->p_sout = p_sout;
    psz_next = FUNC1( &p_mux->psz_mux, &p_mux->p_cfg, psz_mux );
    FUNC2( psz_next );

    p_mux->p_access     = p_access;
    p_mux->pf_control   = NULL;
    p_mux->pf_addstream = NULL;
    p_mux->pf_delstream = NULL;
    p_mux->pf_mux       = NULL;
    p_mux->i_nb_inputs  = 0;
    p_mux->pp_inputs    = NULL;

    p_mux->p_sys        = NULL;
    p_mux->p_module     = NULL;

    p_mux->b_add_stream_any_time = false;
    p_mux->b_waiting_stream = true;
    p_mux->i_add_stream_start = VLC_TICK_INVALID;

    p_mux->p_module =
        FUNC3( p_mux, "sout mux", p_mux->psz_mux, true );

    if( p_mux->p_module == NULL )
    {
        FUNC0( p_mux->psz_mux );

        FUNC7(p_mux);
        return NULL;
    }

    /* *** probe mux capacity *** */
    if( p_mux->pf_control )
    {
        int b_answer = false;

        if( FUNC5( p_mux, MUX_CAN_ADD_STREAM_WHILE_MUXING,
                             &b_answer ) )
        {
            b_answer = false;
        }

        if( b_answer )
        {
            FUNC4( p_sout, "muxer support adding stream at any time" );
            p_mux->b_add_stream_any_time = true;
            p_mux->b_waiting_stream = false;

            /* If we control the output pace then it's better to wait before
             * starting muxing (generates better streams/files). */
            if( !p_sout->i_out_pace_nocontrol )
            {
                b_answer = true;
            }
            else if( FUNC5( p_mux, MUX_GET_ADD_STREAM_WAIT,
                                      &b_answer ) )
            {
                b_answer = false;
            }

            if( b_answer )
            {
                FUNC4( p_sout, "muxer prefers to wait for all ES before "
                         "starting to mux" );
                p_mux->b_waiting_stream = true;
            }
        }
    }

    return p_mux;
}