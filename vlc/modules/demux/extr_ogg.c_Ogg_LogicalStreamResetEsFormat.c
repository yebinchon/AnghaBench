
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ i_codec; int b_packetized; } ;
struct TYPE_9__ {int i_codec; int i_cat; } ;
struct TYPE_7__ {TYPE_3__ fmt; TYPE_4__ fmt_old; } ;
typedef TYPE_1__ logical_stream_t ;
typedef int demux_t ;


 int Ogg_IsOpusFormatCompatible (TYPE_3__*,TYPE_4__*) ;
 int Ogg_IsVorbisFormatCompatible (TYPE_3__*,TYPE_4__*) ;
 scalar_t__ VLC_CODEC_FLAC ;
 scalar_t__ VLC_CODEC_OPUS ;
 scalar_t__ VLC_CODEC_VORBIS ;
 int msg_Warn (int *,char*) ;

__attribute__((used)) static bool Ogg_LogicalStreamResetEsFormat( demux_t *p_demux, logical_stream_t *p_stream )
{
    bool b_compatible = 0;
    if( !p_stream->fmt_old.i_cat || !p_stream->fmt_old.i_codec )
        return 1;


    if( p_stream->fmt.i_codec == VLC_CODEC_VORBIS )
        b_compatible = Ogg_IsVorbisFormatCompatible( &p_stream->fmt, &p_stream->fmt_old );
    else if( p_stream->fmt.i_codec == VLC_CODEC_OPUS )
        b_compatible = Ogg_IsOpusFormatCompatible( &p_stream->fmt, &p_stream->fmt_old );
    else if( p_stream->fmt.i_codec == VLC_CODEC_FLAC )
        b_compatible = !p_stream->fmt.b_packetized;

    if( !b_compatible )
        msg_Warn( p_demux, "cannot reuse old stream, resetting the decoder" );

    return !b_compatible;
}
