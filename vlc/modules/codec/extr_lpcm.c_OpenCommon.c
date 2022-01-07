
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int i_bitspersample; } ;
struct TYPE_10__ {int i_codec; TYPE_2__ audio; } ;
struct TYPE_8__ {int i_codec; } ;
struct TYPE_11__ {int pf_flush; int pf_packetize; int pf_decode; TYPE_3__ fmt_out; TYPE_5__* p_sys; TYPE_1__ fmt_in; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_12__ {int b_packetizer; int i_type; int i_header_size; scalar_t__ i_chans_to_reorder; int end_date; } ;
typedef TYPE_5__ decoder_sys_t ;


 int DecodeFrame ;
 int Flush ;

 int LPCM_AOB_HEADER_LEN ;

 int LPCM_BD_HEADER_LEN ;

 int LPCM_VOB_HEADER_LEN ;

 int LPCM_WIDI_HEADER_LEN ;
 int Packetize ;



 int VLC_CODEC_S16N ;
 int VLC_CODEC_S32N ;

 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;
 TYPE_5__* malloc (int) ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static int OpenCommon( decoder_t *p_dec, bool b_packetizer )
{
    decoder_sys_t *p_sys;
    int i_type;
    int i_header_size;

    switch( p_dec->fmt_in.i_codec )
    {

    case 129:
        i_type = 133;
        i_header_size = LPCM_VOB_HEADER_LEN;
        break;

    case 130:
        i_type = 135;
        i_header_size = LPCM_AOB_HEADER_LEN;
        break;

    case 131:
        i_type = 134;
        i_header_size = LPCM_BD_HEADER_LEN;
        break;

    case 128:
        i_type = 132;
        i_header_size = LPCM_WIDI_HEADER_LEN;
        break;
    default:
        return VLC_EGENERIC;
    }


    if( ( p_dec->p_sys = p_sys = malloc(sizeof(decoder_sys_t)) ) == ((void*)0) )
        return VLC_ENOMEM;


    p_sys->b_packetizer = b_packetizer;
    date_Set( &p_sys->end_date, VLC_TICK_INVALID );
    p_sys->i_type = i_type;
    p_sys->i_header_size = i_header_size;
    p_sys->i_chans_to_reorder = 0;


    if( b_packetizer )
    {
        switch( i_type )
        {
        case 133:
            p_dec->fmt_out.i_codec = 129;
            break;
        case 135:
            p_dec->fmt_out.i_codec = 130;
            break;
        case 132:
            p_dec->fmt_out.i_codec = 128;
            break;
        default:
            vlc_assert_unreachable();
        case 134:
            p_dec->fmt_out.i_codec = 131;
            break;
        }
    }
    else
    {
        switch( p_dec->fmt_out.audio.i_bitspersample )
        {
        case 24:
        case 20:
            p_dec->fmt_out.i_codec = VLC_CODEC_S32N;
            p_dec->fmt_out.audio.i_bitspersample = 32;
            break;
        default:
            p_dec->fmt_out.i_codec = VLC_CODEC_S16N;
            p_dec->fmt_out.audio.i_bitspersample = 16;
            break;
        }
    }


    if( !b_packetizer )
        p_dec->pf_decode = DecodeFrame;
    else
        p_dec->pf_packetize = Packetize;
    p_dec->pf_flush = Flush;

    return VLC_SUCCESS;
}
