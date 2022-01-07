
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


typedef int vlc_object_t ;
struct TYPE_19__ {int i_chan_mode; scalar_t__ i_rate; } ;
struct TYPE_20__ {scalar_t__ i_profile; scalar_t__ i_level; TYPE_3__ audio; } ;
struct TYPE_17__ {int i_chan_mode; scalar_t__ i_rate; } ;
struct TYPE_18__ {TYPE_1__ audio; } ;
struct TYPE_21__ {TYPE_4__ fmt_in; int pf_flush; int pf_decode; TYPE_2__ fmt_out; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_22__ {int b_extract; int end_date; scalar_t__ i_previous_layout; scalar_t__ i_previous_channels; scalar_t__ i_reject_count; int const* p_codec; TYPE_7__* p_context; } ;
typedef TYPE_6__ decoder_sys_t ;
struct TYPE_23__ {scalar_t__ profile; scalar_t__ level; } ;
typedef TYPE_7__ AVCodecContext ;
typedef int AVCodec ;


 int DecodeAudio ;
 scalar_t__ FF_LEVEL_UNKNOWN ;
 scalar_t__ FF_PROFILE_UNKNOWN ;
 int Flush ;
 int InitDecoderConfig (TYPE_5__*,TYPE_7__*) ;
 scalar_t__ OpenAudioCodec (TYPE_5__*) ;
 int SetupOutputFormat (TYPE_5__*,int) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int avcodec_free_context (TYPE_7__**) ;
 int date_Init (int *,scalar_t__,int) ;
 TYPE_7__* ffmpeg_AllocContext (TYPE_5__*,int const**) ;
 int free (TYPE_6__*) ;
 TYPE_6__* malloc (int) ;
 scalar_t__ unlikely (int ) ;

int InitAudioDec( vlc_object_t *obj )
{
    decoder_t *p_dec = (decoder_t *)obj;
    const AVCodec *codec;
    AVCodecContext *avctx = ffmpeg_AllocContext( p_dec, &codec );
    if( avctx == ((void*)0) )
        return VLC_EGENERIC;


    decoder_sys_t *p_sys = malloc(sizeof(*p_sys));
    if( unlikely(p_sys == ((void*)0)) )
    {
        avcodec_free_context( &avctx );
        return VLC_ENOMEM;
    }

    p_dec->p_sys = p_sys;
    p_sys->p_context = avctx;
    p_sys->p_codec = codec;


    InitDecoderConfig( p_dec, avctx );


    if( OpenAudioCodec( p_dec ) < 0 )
    {
        free( p_sys );
        avcodec_free_context( &avctx );
        return VLC_EGENERIC;
    }

    p_sys->i_reject_count = 0;
    p_sys->b_extract = 0;
    p_sys->i_previous_channels = 0;
    p_sys->i_previous_layout = 0;



    SetupOutputFormat( p_dec, 0 );

    if( !p_dec->fmt_out.audio.i_rate )
        p_dec->fmt_out.audio.i_rate = p_dec->fmt_in.audio.i_rate;
    if( p_dec->fmt_out.audio.i_rate )
        date_Init( &p_sys->end_date, p_dec->fmt_out.audio.i_rate, 1 );
    p_dec->fmt_out.audio.i_chan_mode = p_dec->fmt_in.audio.i_chan_mode;

    p_dec->pf_decode = DecodeAudio;
    p_dec->pf_flush = Flush;


    if( avctx->profile != FF_PROFILE_UNKNOWN )
        p_dec->fmt_in.i_profile = avctx->profile;
    if( avctx->level != FF_LEVEL_UNKNOWN )
        p_dec->fmt_in.i_level = avctx->level;

    return VLC_SUCCESS;
}
