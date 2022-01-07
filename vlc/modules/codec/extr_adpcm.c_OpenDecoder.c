
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef unsigned int uint8_t ;
typedef int int16_t ;
struct TYPE_15__ {scalar_t__ i_rate; unsigned int i_channels; int i_physical_channels; } ;
struct TYPE_16__ {TYPE_3__ audio; int i_codec; } ;
struct TYPE_13__ {scalar_t__ i_rate; unsigned int i_channels; int i_blockalign; int i_bitspersample; } ;
struct TYPE_14__ {int i_codec; TYPE_1__ audio; } ;
struct TYPE_17__ {int pf_flush; int pf_decode; TYPE_4__ fmt_out; TYPE_2__ fmt_in; TYPE_6__* p_sys; } ;
typedef TYPE_5__ decoder_t ;
struct TYPE_18__ {int i_samplesperblock; int codec; int i_block; int end_date; struct TYPE_18__* prev; } ;
typedef TYPE_6__ decoder_sys_t ;
 int DecodeAudio ;
 int Flush ;






 int VLC_CODEC_S16N ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_6__* calloc (int,int) ;
 int date_Init (int *,scalar_t__,int) ;
 int free (TYPE_6__*) ;
 TYPE_6__* malloc (int) ;
 int msg_Dbg (TYPE_5__*,char*,scalar_t__,unsigned int,int ,unsigned int,int) ;
 int msg_Err (TYPE_5__*,char*,...) ;
 int msg_Warn (TYPE_5__*,char*,int) ;
 scalar_t__ unlikely (int ) ;
 int * vlc_chan_maps ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    switch( p_dec->fmt_in.i_codec )
    {
        case 131:
        case 130:
        case 129:
        case 132:
        case 133:
        case 128:
            break;
        default:
            return VLC_EGENERIC;
    }

    if( p_dec->fmt_in.audio.i_rate <= 0 )
    {
        msg_Err( p_dec, "bad samplerate" );
        return VLC_EGENERIC;
    }


    p_sys = malloc(sizeof(*p_sys));
    if( unlikely(p_sys == ((void*)0)) )
        return VLC_ENOMEM;

    p_sys->prev = ((void*)0);
    p_sys->i_samplesperblock = 0;

    unsigned i_channels = p_dec->fmt_in.audio.i_channels;
    uint8_t i_max_channels = 5;
    switch( p_dec->fmt_in.i_codec )
    {
        case 131:
            p_sys->codec = 136;
            i_max_channels = 2;
            break;
        case 130:
            p_sys->codec = 135;
            i_max_channels = 2;
            break;
        case 129:
            p_sys->codec = 134;
            i_max_channels = 2;
            break;
        case 132:
            p_sys->codec = 138;
            i_max_channels = 2;
            break;
        case 133:
            p_sys->codec = 139;
            i_max_channels = 2;
            break;
        case 128:
            p_sys->codec = 137;
            p_sys->prev = calloc( 2 * p_dec->fmt_in.audio.i_channels,
                                  sizeof( int16_t ) );
            if( unlikely(p_sys->prev == ((void*)0)) )
            {
                free( p_sys );
                return VLC_ENOMEM;
            }
            break;
    }

    if (i_channels > i_max_channels || i_channels == 0)
    {
        free(p_sys->prev);
        free(p_sys);
        msg_Err( p_dec, "Invalid number of channels %i", p_dec->fmt_in.audio.i_channels );
        return VLC_EGENERIC;
    }

    if( p_dec->fmt_in.audio.i_blockalign <= 0 )
    {
        p_sys->i_block = (p_sys->codec == 136) ?
            34 * p_dec->fmt_in.audio.i_channels : 1024;
        msg_Warn( p_dec, "block size undefined, using %zu", p_sys->i_block );
    }
    else
    {
        p_sys->i_block = p_dec->fmt_in.audio.i_blockalign;
    }


    switch( p_sys->codec )
    {
    case 136:
        p_sys->i_samplesperblock = 64;
        break;
    case 135:
        if( p_sys->i_block >= 4 * i_channels )
        {
            p_sys->i_samplesperblock = 2 * ( p_sys->i_block - 4 * i_channels )
                                     / i_channels;
        }
        break;
    case 134:
        if( p_sys->i_block >= 7 * i_channels )
        {
            p_sys->i_samplesperblock =
                2 * (p_sys->i_block - 7 * i_channels) / i_channels + 2;
        }
        break;
    case 138:
        if( p_sys->i_block >= 4 * i_channels )
        {
            p_sys->i_samplesperblock =
                2 * (p_sys->i_block - 4 * i_channels) / i_channels + 1;
        }
        break;
    case 139:
        i_channels = 2;
        if( p_sys->i_block >= 16 )
            p_sys->i_samplesperblock = ( 4 * ( p_sys->i_block - 16 ) + 2 )/ 3;
        break;
    case 137:
        if( p_sys->i_block >= i_channels )
        {
            p_sys->i_samplesperblock =
                2 * (p_sys->i_block - i_channels) / i_channels;
        }
    }

    msg_Dbg( p_dec, "format: samplerate:%d Hz channels:%d bits/sample:%d "
             "blockalign:%zu samplesperblock:%zu",
             p_dec->fmt_in.audio.i_rate, i_channels,
             p_dec->fmt_in.audio.i_bitspersample, p_sys->i_block,
             p_sys->i_samplesperblock );

    if (p_sys->i_samplesperblock == 0)
    {
        free(p_sys->prev);
        free(p_sys);
        msg_Err( p_dec, "Error computing number of samples per block");
        return VLC_EGENERIC;
    }

    p_dec->p_sys = p_sys;
    p_dec->fmt_out.i_codec = VLC_CODEC_S16N;
    p_dec->fmt_out.audio.i_rate = p_dec->fmt_in.audio.i_rate;
    p_dec->fmt_out.audio.i_channels = i_channels;
    p_dec->fmt_out.audio.i_physical_channels = vlc_chan_maps[i_channels];

    date_Init( &p_sys->end_date, p_dec->fmt_out.audio.i_rate, 1 );

    p_dec->pf_decode = DecodeAudio;
    p_dec->pf_flush = Flush;

    return VLC_SUCCESS;
}
