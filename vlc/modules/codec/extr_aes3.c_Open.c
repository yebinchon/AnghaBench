
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int i_rate; int i_bitspersample; } ;
struct TYPE_9__ {TYPE_1__ audio; scalar_t__ i_codec; } ;
struct TYPE_10__ {scalar_t__ i_codec; } ;
struct TYPE_11__ {int pf_flush; int pf_decode; TYPE_2__ fmt_out; int pf_packetize; TYPE_5__* p_sys; TYPE_3__ fmt_in; } ;
typedef TYPE_4__ decoder_t ;
struct TYPE_12__ {int end_date; } ;
typedef TYPE_5__ decoder_sys_t ;


 int Decode ;
 int Flush ;
 int Packetize ;
 scalar_t__ VLC_CODEC_302M ;
 scalar_t__ VLC_CODEC_S16N ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int date_Init (int *,int,int) ;
 TYPE_5__* malloc (int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int Open( decoder_t *p_dec, bool b_packetizer )
{
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_302M )
        return VLC_EGENERIC;


    p_dec->p_sys = p_sys = malloc( sizeof(decoder_sys_t) );

    if( unlikely( !p_sys ) )
        return VLC_EGENERIC;


    date_Init( &p_sys->end_date, 48000, 1 );


    p_dec->fmt_out.audio.i_rate = 48000;


    if( b_packetizer )
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_302M;

        p_dec->pf_packetize = Packetize;
    }
    else
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_S16N;
        p_dec->fmt_out.audio.i_bitspersample = 16;

        p_dec->pf_decode = Decode;
    }
    p_dec->pf_flush = Flush;
    return VLC_SUCCESS;
}
