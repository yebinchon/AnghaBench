#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  size_t uint16_t ;
struct ttml_in_pes_ctx {scalar_t__ i_prev_block_time; scalar_t__ i_offset; } ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  decoder_t ;
struct TYPE_9__ {int i_buffer; scalar_t__ i_dts; scalar_t__ const* p_buffer; } ;
typedef  TYPE_1__ block_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,scalar_t__ const*,size_t) ; 
 int FUNC1 (scalar_t__ const*) ; 
 int FUNC2 (scalar_t__ const*) ; 
 scalar_t__ TTML_GZIP_COMPRESSED_DOCUMENT ; 
 scalar_t__ TTML_UNCOMPRESSED_DOCUMENT ; 
 int VLCDEC_SUCCESS ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 scalar_t__ VLC_TICK_0 ; 
 TYPE_1__* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__ const*,size_t) ; 

__attribute__((used)) static int FUNC7( decoder_t *p_dec,
                          struct ttml_in_pes_ctx *p_ctx,
                          int(*pf_decode)(decoder_t *, block_t *),
                          block_t *p_block )
{
    if( p_block == NULL ) /* No Drain */
        return VLCDEC_SUCCESS;

    if( p_block->i_buffer < 7 )
    {
        FUNC5( p_block );
        return VLC_EGENERIC;
    }

    if( p_block->i_dts == p_ctx->i_prev_block_time )
    {
        FUNC5( p_block );
        return VLC_SUCCESS;
    }

    int64_t i_segment_base = FUNC1(p_block->p_buffer);
    i_segment_base = (i_segment_base << 16) | FUNC2(&p_block->p_buffer[4]);
    i_segment_base *= 100;
    uint8_t i_num_segments = p_block->p_buffer[6];
    size_t i_data = p_block->i_buffer - 7;
    const uint8_t *p_data = &p_block->p_buffer[7];
    p_ctx->i_offset = (p_block->i_dts - VLC_TICK_0) - i_segment_base;
    for( uint8_t i=0; i<i_num_segments; i++ )
    {
        if( i_data < 3 )
            break;
        uint8_t i_type = p_data[0];
        uint16_t i_size = FUNC2(&p_data[1]);
        if( i_size > i_data - 3 )
            break;
        block_t *p_segment = NULL;
        if( i_type == TTML_UNCOMPRESSED_DOCUMENT )
        {
            p_segment = FUNC3( i_size );
            if( p_segment )
                FUNC6( p_segment->p_buffer, &p_data[3], i_size );
        }
        else if( i_type == TTML_GZIP_COMPRESSED_DOCUMENT )
        {
            p_segment = FUNC0( p_dec, &p_data[3], i_size );
        }

        if( p_segment )
        {
            FUNC4( p_segment, p_block );
            pf_decode( p_dec, p_segment );
        }

        p_data += 3 + i_size;
        i_data -= 3 + i_size;
    }

    p_ctx->i_prev_block_time = p_block->i_dts;
    FUNC5( p_block );
    return VLC_SUCCESS;
}