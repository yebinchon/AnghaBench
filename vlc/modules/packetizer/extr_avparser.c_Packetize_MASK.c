#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef  TYPE_1__ decoder_t ;
struct TYPE_11__ {int i_offset; TYPE_6__* p_parser_ctx; int /*<<< orphan*/  p_codec_ctx; } ;
typedef  TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int i_flags; int i_buffer; int /*<<< orphan*/  i_dts; int /*<<< orphan*/  i_pts; int /*<<< orphan*/ * p_buffer; } ;
typedef  TYPE_3__ block_t ;
struct TYPE_13__ {int key_frame; } ;

/* Variables and functions */
 int BLOCK_FLAG_CORRUPTED ; 
 int BLOCK_FLAG_TYPE_I ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VLC_TICK_INVALID ; 
 scalar_t__ FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_3__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static block_t *FUNC6 ( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( pp_block == NULL || *pp_block == NULL )
        return NULL;
    if( (*pp_block)->i_flags&(BLOCK_FLAG_CORRUPTED) )
    {
        FUNC3( *pp_block );
        return NULL;
    }

    block_t * p_block = *pp_block;

    uint8_t * p_indata = p_block->p_buffer + p_sys->i_offset;
    int i_inlen = p_block->i_buffer -  p_sys->i_offset;
    uint8_t * p_outdata;
    int i_outlen;

    if( p_sys->i_offset == i_inlen )
        goto out;

    p_sys->i_offset += FUNC1( p_sys->p_parser_ctx, p_sys->p_codec_ctx,
                                         &p_outdata, &i_outlen, p_indata, i_inlen,
                                         FUNC0(p_block->i_pts), FUNC0(p_block->i_dts), -1);

    if( FUNC5( i_outlen <= 0 || !p_outdata ) )
        goto out;

    block_t * p_ret = FUNC2( i_outlen );

    if( FUNC5 ( !p_ret ) )
        goto out;

    FUNC4( p_ret->p_buffer, p_outdata, i_outlen );
    p_ret->i_pts = p_block->i_pts;
    p_ret->i_dts = p_block->i_dts;
    if( p_sys->p_parser_ctx->key_frame == 1 )
        p_ret->i_flags |= BLOCK_FLAG_TYPE_I;

    p_block->i_pts = p_block->i_dts = VLC_TICK_INVALID;

    return p_ret;

out:
    p_sys->i_offset = 0;
    FUNC3( *pp_block );
    *pp_block = NULL;
    return NULL;
}