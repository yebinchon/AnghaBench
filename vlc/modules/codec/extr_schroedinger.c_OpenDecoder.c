
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {int i_codec; } ;
struct TYPE_8__ {scalar_t__ i_codec; } ;
struct TYPE_9__ {int pf_flush; int pf_decode; TYPE_1__ fmt_out; TYPE_4__* p_sys; TYPE_2__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_10__ {scalar_t__ i_frame_pts_delta; int i_lastpts; int * p_format; int * p_schro; } ;
typedef TYPE_4__ decoder_sys_t ;
typedef int SchroDecoder ;


 int DecodeBlock ;
 int Flush ;
 scalar_t__ VLC_CODEC_DIRAC ;
 int VLC_CODEC_I420 ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 int free (TYPE_4__*) ;
 TYPE_4__* malloc (int) ;
 int * schro_decoder_new () ;
 int schro_init () ;

__attribute__((used)) static int OpenDecoder( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;
    SchroDecoder *p_schro;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_DIRAC )
    {
        return VLC_EGENERIC;
    }


    p_sys = malloc(sizeof(decoder_sys_t));
    if( p_sys == ((void*)0) )
        return VLC_ENOMEM;



    schro_init();


    if( !(p_schro = schro_decoder_new()) )
    {
        free( p_sys );
        return VLC_EGENERIC;
    }

    p_dec->p_sys = p_sys;
    p_sys->p_schro = p_schro;
    p_sys->p_format = ((void*)0);
    p_sys->i_lastpts = VLC_TICK_INVALID;
    p_sys->i_frame_pts_delta = 0;


    p_dec->fmt_out.i_codec = VLC_CODEC_I420;


    p_dec->pf_decode = DecodeBlock;
    p_dec->pf_flush = Flush;

    return VLC_SUCCESS;
}
