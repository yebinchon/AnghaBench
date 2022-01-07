
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {scalar_t__ i_codec; int i_cat; } ;
struct TYPE_4__ {TYPE_1__ fmt_out; int pf_encode_sub; int * p_sys; } ;
typedef TYPE_2__ encoder_t ;


 int Encode ;
 int SPU_ES ;
 scalar_t__ VLC_CODEC_WEBVTT ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

int webvtt_OpenEncoder( vlc_object_t *p_this )
{
    encoder_t *p_enc = (encoder_t *)p_this;

    if( p_enc->fmt_out.i_codec != VLC_CODEC_WEBVTT )
        return VLC_EGENERIC;

    p_enc->p_sys = ((void*)0);

    p_enc->pf_encode_sub = Encode;
    p_enc->fmt_out.i_cat = SPU_ES;
    return VLC_SUCCESS;
}
