
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_5__ {int i_width; int i_height; int i_sar_num; int i_sar_den; } ;
struct TYPE_4__ {TYPE_2__ video; int i_codec; } ;
struct TYPE_6__ {TYPE_1__ fmt_out; int pf_decode; } ;
typedef TYPE_3__ decoder_t ;


 int DecodeBlock ;
 int VLC_CODEC_I420 ;
 int VLC_SUCCESS ;
 int msg_Dbg (int *,char*) ;

__attribute__((used)) static int OpenDecoder ( vlc_object_t *p_this )
{
    decoder_t *p_dec = (decoder_t*)p_this;

    msg_Dbg( p_this, "opening stats decoder" );


    p_dec->pf_decode = DecodeBlock;


    p_dec->fmt_out.i_codec = VLC_CODEC_I420;
    p_dec->fmt_out.video.i_width = 100;
    p_dec->fmt_out.video.i_height = 100;
    p_dec->fmt_out.video.i_sar_num = 1;
    p_dec->fmt_out.video.i_sar_den = 1;

    return VLC_SUCCESS;
}
