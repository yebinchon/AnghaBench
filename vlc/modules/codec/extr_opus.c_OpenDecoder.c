
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int i_codec; } ;
struct TYPE_7__ {scalar_t__ i_codec; } ;
struct TYPE_8__ {int pf_flush; int pf_decode; TYPE_1__ fmt_out; TYPE_4__* p_sys; TYPE_2__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_9__ {int b_has_headers; int * p_st; int end_date; } ;
typedef TYPE_4__ decoder_sys_t ;


 int DecodeAudio ;
 int Flush ;
 int VLC_CODEC_FL32 ;
 scalar_t__ VLC_CODEC_OPUS ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int date_Set (int *,int ) ;
 TYPE_4__* malloc (int) ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_OPUS )
        return VLC_EGENERIC;


    if( ( p_dec->p_sys = p_sys = malloc(sizeof(decoder_sys_t)) ) == ((void*)0) )
        return VLC_ENOMEM;
    p_sys->b_has_headers = 0;

    date_Set( &p_sys->end_date, VLC_TICK_INVALID );


    p_dec->fmt_out.i_codec = VLC_CODEC_FL32;

    p_dec->pf_decode = DecodeAudio;
    p_dec->pf_flush = Flush;

    p_sys->p_st = ((void*)0);

    return VLC_SUCCESS;
}
