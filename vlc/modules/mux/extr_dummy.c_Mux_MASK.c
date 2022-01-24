#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int i_nb_inputs; int /*<<< orphan*/  p_access; TYPE_2__** pp_inputs; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ sout_mux_t ;
struct TYPE_14__ {int b_header; } ;
typedef  TYPE_4__ sout_mux_sys_t ;
struct TYPE_15__ {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_5__ block_t ;
typedef  int /*<<< orphan*/  block_fifo_t ;
struct TYPE_12__ {int /*<<< orphan*/ * p_fifo; TYPE_1__* p_fmt; } ;
struct TYPE_11__ {scalar_t__ i_extra; int /*<<< orphan*/  p_extra; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_HEADER ; 
 int VLC_SUCCESS ; 
 TYPE_5__* FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_5__*) ; 

__attribute__((used)) static int FUNC6( sout_mux_t *p_mux )
{
    sout_mux_sys_t *p_sys = p_mux->p_sys;
    int i;

    for( i = 0; i < p_mux->i_nb_inputs; i++ )
    {
        block_fifo_t *p_fifo;
        int i_count;

        if( p_sys->b_header && p_mux->pp_inputs[i]->p_fmt->i_extra )
        {
            /* Write header data */
            block_t *p_data;
            p_data = FUNC0( p_mux->pp_inputs[i]->p_fmt->i_extra );

            FUNC3( p_data->p_buffer, p_mux->pp_inputs[i]->p_fmt->p_extra,
                    p_mux->pp_inputs[i]->p_fmt->i_extra );

            p_data->i_flags |= BLOCK_FLAG_HEADER;

            FUNC4( p_mux, "writing header data" );
            FUNC5( p_mux->p_access, p_data );
        }

        p_fifo = p_mux->pp_inputs[i]->p_fifo;
        i_count = FUNC1( p_fifo );
        while( i_count > 0 )
        {
            block_t *p_data = FUNC2( p_fifo );

            FUNC5( p_mux->p_access, p_data );

            i_count--;
        }
    }
    p_sys->b_header = false;

    return VLC_SUCCESS;
}