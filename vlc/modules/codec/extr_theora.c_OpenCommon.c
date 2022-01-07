
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_7__ {scalar_t__ i_codec; } ;
struct TYPE_6__ {scalar_t__ i_codec; } ;
struct TYPE_8__ {int pf_flush; int pf_decode; TYPE_2__ fmt_out; int pf_packetize; TYPE_4__* p_sys; TYPE_1__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;
struct TYPE_9__ {int b_packetizer; int b_has_headers; int b_decoded_first_keyframe; int ti; int tc; int * tcx; int i_pts; } ;
typedef TYPE_4__ decoder_sys_t ;


 int DecodeVideo ;
 int Flush ;
 int Packetize ;
 scalar_t__ VLC_CODEC_I420 ;
 scalar_t__ VLC_CODEC_THEORA ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int VLC_TICK_INVALID ;
 TYPE_4__* malloc (int) ;
 int th_comment_init (int *) ;
 int th_info_init (int *) ;

__attribute__((used)) static int OpenCommon( vlc_object_t *p_this, bool b_packetizer )
{
    decoder_t *p_dec = (decoder_t*)p_this;
    decoder_sys_t *p_sys;

    if( p_dec->fmt_in.i_codec != VLC_CODEC_THEORA )
    {
        return VLC_EGENERIC;
    }


    if( ( p_dec->p_sys = p_sys = malloc(sizeof(*p_sys)) ) == ((void*)0) )
        return VLC_ENOMEM;
    p_sys->b_packetizer = b_packetizer;
    p_sys->b_has_headers = 0;
    p_sys->i_pts = VLC_TICK_INVALID;
    p_sys->b_decoded_first_keyframe = 0;
    p_sys->tcx = ((void*)0);

    if( b_packetizer )
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_THEORA;
        p_dec->pf_packetize = Packetize;
    }
    else
    {
        p_dec->fmt_out.i_codec = VLC_CODEC_I420;
        p_dec->pf_decode = DecodeVideo;
    }
    p_dec->pf_flush = Flush;


    th_comment_init( &p_sys->tc );
    th_info_init( &p_sys->ti );

    return VLC_SUCCESS;
}
