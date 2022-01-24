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
struct TYPE_12__ {int /*<<< orphan*/  audio; } ;
struct TYPE_11__ {int /*<<< orphan*/  audio; } ;
struct TYPE_13__ {TYPE_4__* p_sys; TYPE_2__ fmt_out; TYPE_1__ fmt_in; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_14__ {int* channel_map; } ;
typedef  TYPE_4__ filter_sys_t ;
struct TYPE_15__ {unsigned int i_buffer; size_t i_nb_samples; scalar_t__ p_buffer; int /*<<< orphan*/  i_length; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; } ;
typedef  TYPE_5__ block_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_5__* FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static block_t *FUNC5( filter_t *p_filter, block_t *p_in_buf )
{
    unsigned i_input_nb = FUNC0( &p_filter->fmt_in.audio );
    unsigned i_output_nb = FUNC0( &p_filter->fmt_out.audio );

    FUNC1( i_input_nb < i_output_nb );

    block_t *p_out_buf = FUNC2(
                              p_in_buf->i_buffer * i_output_nb / i_input_nb );
    if( FUNC4(p_out_buf == NULL) )
    {
        FUNC3( p_in_buf );
        return NULL;
    }

    p_out_buf->i_nb_samples = p_in_buf->i_nb_samples;
    p_out_buf->i_dts        = p_in_buf->i_dts;
    p_out_buf->i_pts        = p_in_buf->i_pts;
    p_out_buf->i_length     = p_in_buf->i_length;

    filter_sys_t *p_sys = p_filter->p_sys;

    float *p_dest = (float *)p_out_buf->p_buffer;
    const float *p_src = (float *)p_in_buf->p_buffer;
    const int *channel_map = p_sys->channel_map;

    for( size_t i = 0; i < p_in_buf->i_nb_samples; i++ )
    {
        for( unsigned j = 0; j < i_output_nb; j++ )
            p_dest[j] = channel_map[j] == -1 ? 0.f : p_src[channel_map[j]];

        p_src += i_input_nb;
        p_dest += i_output_nb;
    }

    FUNC3( p_in_buf );
    return p_out_buf;
}