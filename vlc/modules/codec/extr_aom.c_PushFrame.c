
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {TYPE_3__* p_sys; } ;
typedef TYPE_2__ decoder_t ;
struct TYPE_12__ {TYPE_1__* frame_priv; int i_next_frame_priv; int ctx; } ;
typedef TYPE_3__ decoder_sys_t ;
struct TYPE_13__ {size_t i_buffer; scalar_t__ i_pts; scalar_t__ i_dts; int * p_buffer; } ;
typedef TYPE_4__ block_t ;
typedef scalar_t__ aom_codec_err_t ;
typedef int aom_codec_ctx_t ;
struct TYPE_10__ {scalar_t__ pts; } ;


 scalar_t__ AOM_CODEC_OK ;
 scalar_t__ AOM_CODEC_UNSUP_BITSTREAM ;
 int AOM_ERR (TYPE_2__*,int *,char*) ;
 uintptr_t AOM_MAX_FRAMES_DEPTH ;
 int VLCDEC_ECRITICAL ;
 int VLCDEC_SUCCESS ;
 scalar_t__ VLC_TICK_INVALID ;
 scalar_t__ aom_codec_decode (int *,int const*,size_t,void*) ;
 int block_Release (TYPE_4__*) ;
 scalar_t__ likely (TYPE_4__*) ;

__attribute__((used)) static int PushFrame(decoder_t *dec, block_t *block)
{
    decoder_sys_t *p_sys = dec->p_sys;
    aom_codec_ctx_t *ctx = &p_sys->ctx;
    const uint8_t *p_buffer;
    size_t i_buffer;


    uintptr_t priv_index = p_sys->i_next_frame_priv++ % AOM_MAX_FRAMES_DEPTH;

    if(likely(block))
    {
        p_buffer = block->p_buffer;
        i_buffer = block->i_buffer;
        p_sys->frame_priv[priv_index].pts = (block->i_pts != VLC_TICK_INVALID) ? block->i_pts : block->i_dts;
    }
    else
    {
        p_buffer = ((void*)0);
        i_buffer = 0;
    }

    aom_codec_err_t err;
    err = aom_codec_decode(ctx, p_buffer, i_buffer, (void*)priv_index);

    if(block)
        block_Release(block);

    if (err != AOM_CODEC_OK) {
        AOM_ERR(dec, ctx, "Failed to decode frame");
        if (err == AOM_CODEC_UNSUP_BITSTREAM)
            return VLCDEC_ECRITICAL;
    }
    return VLCDEC_SUCCESS;
}
