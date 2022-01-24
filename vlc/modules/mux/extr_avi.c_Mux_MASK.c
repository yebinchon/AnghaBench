#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_7__ ;
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {int i_nb_inputs; int /*<<< orphan*/  p_access; TYPE_1__** pp_inputs; TYPE_4__* p_sys; } ;
typedef  TYPE_3__ sout_mux_t ;
struct TYPE_24__ {size_t i_entry_count; size_t i_entry_max; TYPE_7__* entry; } ;
struct TYPE_26__ {int b_write_header; scalar_t__ i_movi_size; TYPE_2__ idx1; TYPE_6__* stream; } ;
typedef  TYPE_4__ sout_mux_sys_t ;
struct TYPE_27__ {scalar_t__ i_length; scalar_t__ i_dts; int i_buffer; int i_flags; char* p_buffer; } ;
typedef  TYPE_5__ block_t ;
typedef  int /*<<< orphan*/  block_fifo_t ;
struct TYPE_28__ {int i_totalsize; int /*<<< orphan*/  fcc; int /*<<< orphan*/  i_duration; int /*<<< orphan*/  i_frames; } ;
typedef  TYPE_6__ avi_stream_t ;
struct TYPE_29__ {int i_length; scalar_t__ i_pos; scalar_t__ i_flags; int /*<<< orphan*/  fcc; } ;
typedef  TYPE_7__ avi_idx1_entry_t ;
struct TYPE_23__ {int /*<<< orphan*/  fmt; int /*<<< orphan*/ * p_fifo; scalar_t__ p_sys; } ;

/* Variables and functions */
 scalar_t__ AVIIF_KEYFRAME ; 
 int BLOCK_FLAG_TYPE_I ; 
 int BLOCK_FLAG_TYPE_MASK ; 
 scalar_t__ FUNC0 (TYPE_6__*,int /*<<< orphan*/ *,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 scalar_t__ VLC_SUCCESS ; 
 TYPE_5__* FUNC3 (TYPE_3__*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC7 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_5__*) ; 
 TYPE_7__* FUNC13 (TYPE_7__*,int) ; 

__attribute__((used)) static int FUNC14      ( sout_mux_t *p_mux )
{
    sout_mux_sys_t  *p_sys = p_mux->p_sys;
    avi_stream_t    *p_stream;
    int i_stream, i;

    if( p_sys->b_write_header )
    {
        FUNC10( p_mux, "writing header" );

        block_t *p_hdr = FUNC3( p_mux );
        if ( !p_hdr )
            return VLC_EGENERIC;
        FUNC12( p_mux->p_access, p_hdr );

        p_sys->b_write_header = false;
    }

    for( i = 0; i < p_mux->i_nb_inputs; i++ )
    {
        int i_count;
        block_fifo_t *p_fifo;

        if (!p_mux->pp_inputs[i]->p_sys)
            continue;

        i_stream = *((int*)p_mux->pp_inputs[i]->p_sys );
        p_stream = &p_sys->stream[i_stream];

        p_fifo = p_mux->pp_inputs[i]->p_fifo;
        i_count = FUNC4(  p_fifo );
        while( i_count > 1 )
        {
            avi_idx1_entry_t *p_idx;
            block_t *p_data;

            p_data = FUNC5( p_fifo );
            if( FUNC4( p_fifo ) > 0 )
            {
                block_t *p_next = FUNC6( p_fifo );
                p_data->i_length = p_next->i_dts - p_data->i_dts;
            }

            if( FUNC0( p_stream, &p_mux->pp_inputs[i]->fmt,
                                &p_data ) != VLC_SUCCESS )
            {
                i_count--;
                continue;
            }

            p_stream->i_frames++;
            if( p_data->i_length < 0 )
            {
                FUNC11( p_mux, "argg length < 0 l" );
                FUNC8( p_data );
                i_count--;
                continue;
            }
            p_stream->i_duration  += p_data->i_length;
            p_stream->i_totalsize += p_data->i_buffer;

            /* add idx1 entry for this frame */
            p_idx = &p_sys->idx1.entry[p_sys->idx1.i_entry_count];
            FUNC9( p_idx->fcc, p_stream->fcc, 4 );
            p_idx->i_flags = 0;
            if( ( p_data->i_flags & BLOCK_FLAG_TYPE_MASK ) == 0 || ( p_data->i_flags & BLOCK_FLAG_TYPE_I ) )
                p_idx->i_flags = AVIIF_KEYFRAME;
            p_idx->i_pos   = p_sys->i_movi_size + 4;
            p_idx->i_length= p_data->i_buffer;
            p_sys->idx1.i_entry_count++;
            if( p_sys->idx1.i_entry_count >= p_sys->idx1.i_entry_max )
            {
                p_sys->idx1.i_entry_max += 10000;
                p_sys->idx1.entry = FUNC13( p_sys->idx1.entry,
                       p_sys->idx1.i_entry_max * sizeof( avi_idx1_entry_t ) );
            }

            p_data = FUNC7( p_data, 8, p_data->i_buffer );
            if( p_data )
            {
                FUNC2( p_data->p_buffer, p_stream->fcc );
                FUNC1( p_data->p_buffer + 4, p_data->i_buffer - 8 );

                if( p_data->i_buffer & 0x01 )
                {
                    p_data = FUNC7( p_data, 0, p_data->i_buffer + 1 );
                    if ( p_data )
                        p_data->p_buffer[ p_data->i_buffer - 1 ] = '\0';
                }

                if ( p_data )
                {
                    p_sys->i_movi_size += p_data->i_buffer;
                    FUNC12( p_mux->p_access, p_data );
                }
            }

            i_count--;
        }

    }
    return( 0 );
}