#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  i_extra; int /*<<< orphan*/  p_extra; } ;
struct TYPE_7__ {TYPE_1__ fmt_in; } ;
typedef  TYPE_2__ decoder_t ;
typedef  int /*<<< orphan*/  bs_t ;
struct TYPE_8__ {int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_buffer; int /*<<< orphan*/  p_buffer; } ;
typedef  TYPE_3__ block_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_B ; 
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_I ; 
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_MASK ; 
 int /*<<< orphan*/  BLOCK_FLAG_TYPE_P ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const) ; 

__attribute__((used)) static void FUNC4( decoder_t *p_dec, block_t *p_block )
{
    bs_t s;

    /* Parse Sequence header */
    FUNC1( &s, p_dec->fmt_in.p_extra, p_dec->fmt_in.i_extra );
    if( FUNC2( &s, 2 ) == 3 )
        return;
    FUNC3( &s, 22 );
    const bool b_range_reduction = FUNC2( &s, 1 );
    const bool b_has_frames = FUNC2( &s, 3 ) > 0;
    FUNC3( &s, 2 );
    const bool b_frame_interpolation = FUNC2( &s, 1 );
    if( FUNC0( &s ) )
        return;

    /* Parse frame type */
    FUNC1( &s, p_block->p_buffer, p_block->i_buffer );
    FUNC3( &s, b_frame_interpolation +
                 2 +
                 b_range_reduction );

    p_block->i_flags &= ~BLOCK_FLAG_TYPE_MASK;
    if( FUNC2( &s, 1 ) )
        p_block->i_flags |= BLOCK_FLAG_TYPE_P;
    else if( !b_has_frames || FUNC2( &s, 1 ) )
        p_block->i_flags |= BLOCK_FLAG_TYPE_I;
    else
        p_block->i_flags |= BLOCK_FLAG_TYPE_B;
}