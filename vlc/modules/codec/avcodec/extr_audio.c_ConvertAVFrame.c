
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int i_bytes_per_frame; int i_bitspersample; int i_channels; int i_format; } ;
struct TYPE_18__ {TYPE_1__ audio; } ;
struct TYPE_19__ {TYPE_2__ fmt_out; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_20__ {int pi_extraction; scalar_t__ b_extract; TYPE_7__* p_context; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_21__ {int i_nb_samples; int p_buffer; } ;
typedef TYPE_5__ block_t ;
struct TYPE_23__ {int channels; int sample_fmt; } ;
struct TYPE_22__ {int* linesize; void** extended_data; int nb_samples; } ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVCodecContext ;


 int aout_ChannelExtract (int ,int ,int ,int,int,int ,int ) ;
 int aout_Interleave (int ,void const**,int,int,int ) ;
 int av_frame_free (TYPE_6__**) ;
 scalar_t__ av_sample_fmt_is_planar (int ) ;
 TYPE_5__* block_Alloc (int) ;
 int block_Release (TYPE_5__*) ;
 scalar_t__ likely (TYPE_5__*) ;
 TYPE_5__* vlc_av_frame_Wrap (TYPE_6__*) ;

__attribute__((used)) static block_t * ConvertAVFrame( decoder_t *p_dec, AVFrame *frame )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *ctx = p_sys->p_context;
    block_t *p_block;


    if( av_sample_fmt_is_planar( ctx->sample_fmt ) )
    {
        p_block = block_Alloc(frame->linesize[0] * ctx->channels);
        if ( likely(p_block) )
        {
            const void *planes[ctx->channels];
            for (int i = 0; i < ctx->channels; i++)
                planes[i] = frame->extended_data[i];

            aout_Interleave(p_block->p_buffer, planes, frame->nb_samples,
                            ctx->channels, p_dec->fmt_out.audio.i_format);
            p_block->i_nb_samples = frame->nb_samples;
        }
        av_frame_free(&frame);
    }
    else
    {
        p_block = vlc_av_frame_Wrap(frame);
        frame = ((void*)0);
    }

    if (p_sys->b_extract && p_block)
    {
        block_t *p_buffer = block_Alloc( p_dec->fmt_out.audio.i_bytes_per_frame
                                         * p_block->i_nb_samples );
        if( likely(p_buffer) )
        {
            aout_ChannelExtract( p_buffer->p_buffer,
                                 p_dec->fmt_out.audio.i_channels,
                                 p_block->p_buffer, ctx->channels,
                                 p_block->i_nb_samples, p_sys->pi_extraction,
                                 p_dec->fmt_out.audio.i_bitspersample );
            p_buffer->i_nb_samples = p_block->i_nb_samples;
        }
        block_Release( p_block );
        p_block = p_buffer;
    }

    return p_block;
}
