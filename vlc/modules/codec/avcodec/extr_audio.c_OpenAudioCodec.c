
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int i_rate; int i_bitspersample; int i_blockalign; int i_channels; } ;
struct TYPE_13__ {int i_bitrate; TYPE_1__ audio; int b_packetized; } ;
struct TYPE_14__ {TYPE_2__ fmt_in; TYPE_4__* p_sys; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_15__ {TYPE_6__* p_codec; TYPE_5__* p_context; } ;
typedef TYPE_4__ decoder_sys_t ;
struct TYPE_17__ {scalar_t__ id; int name; } ;
struct TYPE_16__ {scalar_t__ extradata_size; int sample_rate; int bit_rate; int bits_per_coded_sample; int block_align; int channels; } ;
typedef TYPE_5__ AVCodecContext ;
typedef TYPE_6__ AVCodec ;


 scalar_t__ AV_CODEC_ID_AAC ;
 scalar_t__ AV_CODEC_ID_ADPCM_G726 ;
 scalar_t__ AV_CODEC_ID_VORBIS ;
 int ffmpeg_OpenCodec (TYPE_3__*,TYPE_5__*,TYPE_6__ const*) ;
 int msg_Warn (TYPE_3__*,char*,int ) ;

__attribute__((used)) static int OpenAudioCodec( decoder_t *p_dec )
{
    decoder_sys_t *p_sys = p_dec->p_sys;
    AVCodecContext *ctx = p_sys->p_context;
    const AVCodec *codec = p_sys->p_codec;

    if( ctx->extradata_size <= 0 )
    {
        if( codec->id == AV_CODEC_ID_VORBIS ||
            ( codec->id == AV_CODEC_ID_AAC &&
              !p_dec->fmt_in.b_packetized ) )
        {
            msg_Warn( p_dec, "waiting for extra data for codec %s",
                      codec->name );
            return 1;
        }
    }

    ctx->sample_rate = p_dec->fmt_in.audio.i_rate;
    ctx->channels = p_dec->fmt_in.audio.i_channels;
    ctx->block_align = p_dec->fmt_in.audio.i_blockalign;
    ctx->bit_rate = p_dec->fmt_in.i_bitrate;
    ctx->bits_per_coded_sample = p_dec->fmt_in.audio.i_bitspersample;

    if( codec->id == AV_CODEC_ID_ADPCM_G726 &&
        ctx->bit_rate > 0 &&
        ctx->sample_rate > 0)
        ctx->bits_per_coded_sample = ctx->bit_rate / ctx->sample_rate;

    return ffmpeg_OpenCodec( p_dec, ctx, codec );
}
