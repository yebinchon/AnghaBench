
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int int16_t ;
struct TYPE_15__ {scalar_t__ i_rate; scalar_t__ i_physical_channels; void* i_format; } ;
struct TYPE_12__ {TYPE_9__ audio; void* i_codec; } ;
struct TYPE_10__ {size_t i_channels; scalar_t__ i_rate; scalar_t__ i_physical_channels; } ;
struct TYPE_11__ {int i_codec; TYPE_1__ audio; } ;
struct TYPE_13__ {TYPE_3__ fmt_out; TYPE_2__ fmt_in; TYPE_5__* p_sys; int pf_flush; int pf_decode; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_14__ {int end_date; int const* table; } ;
typedef TYPE_5__ decoder_sys_t ;


 size_t AOUT_CHAN_MAX ;
 int DecodeBlock ;
 int Flush ;


 void* VLC_CODEC_S16N ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * alawtos16 ;
 int aout_FormatPrepare (TYPE_9__*) ;
 int date_Init (int *,scalar_t__,int) ;
 TYPE_5__* malloc (int) ;
 int msg_Dbg (TYPE_4__*,char*,scalar_t__,size_t) ;
 int msg_Err (TYPE_4__*,char*,scalar_t__,...) ;
 scalar_t__* pi_channels_maps ;
 int * ulawtos16 ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int DecoderOpen( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    const int16_t *table;

    switch( p_dec->fmt_in.i_codec )
    {
        case 129:
            table = alawtos16;
            break;
        case 128:
            table = ulawtos16;
            break;
        default:
            return VLC_EGENERIC;
    }

    if( p_dec->fmt_in.audio.i_channels == 0 ||
        p_dec->fmt_in.audio.i_channels > AOUT_CHAN_MAX )
    {
        msg_Err( p_dec, "bad channels count (1-%i): %i",
                 AOUT_CHAN_MAX, p_dec->fmt_in.audio.i_channels );
        return VLC_EGENERIC;
    }

    if( p_dec->fmt_in.audio.i_rate == 0 )
    {
        msg_Err( p_dec, "bad samplerate: %d Hz", p_dec->fmt_in.audio.i_rate );
        return VLC_EGENERIC;
    }

    msg_Dbg( p_dec, "samplerate:%dHz channels:%d",
             p_dec->fmt_in.audio.i_rate, p_dec->fmt_in.audio.i_channels );



    decoder_sys_t *p_sys = malloc(sizeof(*p_sys));
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;


    p_dec->pf_decode = DecodeBlock;
    p_dec->pf_flush = Flush;
    p_dec->p_sys = p_sys;

    p_dec->fmt_out.i_codec = VLC_CODEC_S16N;
    p_dec->fmt_out.audio.i_format = VLC_CODEC_S16N;
    p_dec->fmt_out.audio.i_rate = p_dec->fmt_in.audio.i_rate;
    if( p_dec->fmt_in.audio.i_physical_channels )
        p_dec->fmt_out.audio.i_physical_channels =
                                       p_dec->fmt_in.audio.i_physical_channels;
    else
        p_dec->fmt_out.audio.i_physical_channels =
                              pi_channels_maps[p_dec->fmt_in.audio.i_channels];
    aout_FormatPrepare( &p_dec->fmt_out.audio );

    p_sys->table = table;

    date_Init( &p_sys->end_date, p_dec->fmt_out.audio.i_rate, 1 );

    return VLC_SUCCESS;
}
