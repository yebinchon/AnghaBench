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
struct TYPE_15__ {int /*<<< orphan*/  audio; } ;
struct TYPE_14__ {int /*<<< orphan*/  audio; } ;
struct TYPE_16__ {TYPE_2__ fmt_in; TYPE_1__ fmt_out; } ;
typedef  TYPE_3__ filter_t ;
struct TYPE_17__ {size_t i_buffer; int /*<<< orphan*/  i_length; int /*<<< orphan*/  i_pts; int /*<<< orphan*/  i_dts; scalar_t__ i_nb_samples; } ;
typedef  TYPE_4__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_4__*,TYPE_4__*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 

__attribute__((used)) static block_t *FUNC5( filter_t *p_filter, block_t *p_block )
{
    if( !p_block || !p_block->i_nb_samples )
    {
        if( p_block )
            FUNC3( p_block );
        return NULL;
    }

    size_t i_out_size = p_block->i_buffer *
        FUNC1( &(p_filter->fmt_out.audio) ) /
        FUNC1( &(p_filter->fmt_in.audio) );

    block_t *p_out = FUNC2( i_out_size );
    if( !p_out )
    {
        FUNC4( p_filter, "can't get output buffer" );
        FUNC3( p_block );
        return NULL;
    }

    p_out->i_nb_samples = p_block->i_nb_samples;
    p_out->i_dts = p_block->i_dts;
    p_out->i_pts = p_block->i_pts;
    p_out->i_length = p_block->i_length;

    FUNC0( p_filter, p_block, p_out );

    FUNC3( p_block );
    return p_out;
}