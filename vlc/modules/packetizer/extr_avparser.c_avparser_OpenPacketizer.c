
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {scalar_t__ i_codec; int i_cat; } ;
struct TYPE_5__ {TYPE_4__ fmt_in; int fmt_out; int * pf_get_cc; int pf_flush; int pf_packetize; TYPE_2__* p_sys; } ;
typedef TYPE_1__ decoder_t ;
struct TYPE_6__ {scalar_t__ i_offset; int * p_codec_ctx; int * p_parser_ctx; } ;
typedef TYPE_2__ decoder_sys_t ;
typedef int AVCodecParserContext ;
typedef int AVCodecContext ;
typedef int AVCodec ;


 int FlushPacketizer ;
 int GetFfmpegCodec (int ,scalar_t__,unsigned int*,int *) ;
 int Packetize ;
 scalar_t__ VLC_CODEC_VP9 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int av_parser_close (int *) ;
 int * av_parser_init (unsigned int) ;
 int * avcodec_alloc_context3 (int *) ;
 int * avcodec_find_decoder (unsigned int) ;
 int avcodec_free_context (int **) ;
 int es_format_Copy (int *,TYPE_4__*) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_init_avcodec (int *) ;

int avparser_OpenPacketizer( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;


    if( p_dec->fmt_in.i_codec != VLC_CODEC_VP9 )
        return VLC_EGENERIC;

    unsigned i_avcodec_id;

    if( !GetFfmpegCodec( p_dec->fmt_in.i_cat, p_dec->fmt_in.i_codec,
                         &i_avcodec_id, ((void*)0) ) )
        return VLC_EGENERIC;


    vlc_init_avcodec(p_this);


    AVCodecParserContext * p_ctx = av_parser_init( i_avcodec_id );
    if( !p_ctx )
        return VLC_EGENERIC;

    AVCodec * p_codec = avcodec_find_decoder( i_avcodec_id );
    if( unlikely( !p_codec ) )
    {
        av_parser_close( p_ctx );
        return VLC_EGENERIC;
    }

    AVCodecContext * p_codec_ctx = avcodec_alloc_context3( p_codec );
    if( unlikely( !p_codec_ctx ) )
    {
        av_parser_close( p_ctx );
        return VLC_ENOMEM;
    }

    p_dec->p_sys = p_sys = malloc( sizeof(*p_sys) );

    if( unlikely( !p_sys ) )
    {
        avcodec_free_context( &p_codec_ctx );
        av_parser_close( p_ctx );
        return VLC_ENOMEM;
    }
    p_dec->pf_packetize = Packetize;
    p_dec->pf_flush = FlushPacketizer;
    p_dec->pf_get_cc = ((void*)0);
    p_sys->p_parser_ctx = p_ctx;
    p_sys->p_codec_ctx = p_codec_ctx;
    p_sys->i_offset = 0;
    es_format_Copy( &p_dec->fmt_out, &p_dec->fmt_in );

    return VLC_SUCCESS;
}
