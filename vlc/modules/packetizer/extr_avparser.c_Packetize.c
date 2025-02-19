
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_11__ {int i_offset; TYPE_6__* p_parser_ctx; int p_codec_ctx; } ;
typedef TYPE_2__ decoder_sys_t ;
struct TYPE_12__ {int i_flags; int i_buffer; int i_dts; int i_pts; int * p_buffer; } ;
typedef TYPE_3__ block_t ;
struct TYPE_13__ {int key_frame; } ;


 int BLOCK_FLAG_CORRUPTED ;
 int BLOCK_FLAG_TYPE_I ;
 int TO_AV_TS (int ) ;
 int VLC_TICK_INVALID ;
 scalar_t__ av_parser_parse2 (TYPE_6__*,int ,int **,int*,int *,int,int ,int ,int) ;
 TYPE_3__* block_Alloc (int) ;
 int block_Release (TYPE_3__*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static block_t *Packetize ( decoder_t *p_dec, block_t **pp_block )
{
    decoder_sys_t *p_sys = p_dec->p_sys;

    if( pp_block == ((void*)0) || *pp_block == ((void*)0) )
        return ((void*)0);
    if( (*pp_block)->i_flags&(BLOCK_FLAG_CORRUPTED) )
    {
        block_Release( *pp_block );
        return ((void*)0);
    }

    block_t * p_block = *pp_block;

    uint8_t * p_indata = p_block->p_buffer + p_sys->i_offset;
    int i_inlen = p_block->i_buffer - p_sys->i_offset;
    uint8_t * p_outdata;
    int i_outlen;

    if( p_sys->i_offset == i_inlen )
        goto out;

    p_sys->i_offset += av_parser_parse2( p_sys->p_parser_ctx, p_sys->p_codec_ctx,
                                         &p_outdata, &i_outlen, p_indata, i_inlen,
                                         TO_AV_TS(p_block->i_pts), TO_AV_TS(p_block->i_dts), -1);

    if( unlikely( i_outlen <= 0 || !p_outdata ) )
        goto out;

    block_t * p_ret = block_Alloc( i_outlen );

    if( unlikely ( !p_ret ) )
        goto out;

    memcpy( p_ret->p_buffer, p_outdata, i_outlen );
    p_ret->i_pts = p_block->i_pts;
    p_ret->i_dts = p_block->i_dts;
    if( p_sys->p_parser_ctx->key_frame == 1 )
        p_ret->i_flags |= BLOCK_FLAG_TYPE_I;

    p_block->i_pts = p_block->i_dts = VLC_TICK_INVALID;

    return p_ret;

out:
    p_sys->i_offset = 0;
    block_Release( *pp_block );
    *pp_block = ((void*)0);
    return ((void*)0);
}
