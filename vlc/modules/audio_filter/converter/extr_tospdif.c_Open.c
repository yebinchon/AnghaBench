
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_8__ {scalar_t__ i_format; } ;
struct TYPE_9__ {TYPE_3__ audio; } ;
struct TYPE_6__ {scalar_t__ i_format; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct TYPE_10__ {int pf_flush; int pf_audio_filter; int * p_sys; TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef TYPE_5__ filter_t ;
typedef int filter_sys_t ;


 int DoWork ;
 int Flush ;
 scalar_t__ VLC_CODEC_A52 ;
 scalar_t__ VLC_CODEC_DTS ;
 scalar_t__ VLC_CODEC_DTSHD ;
 scalar_t__ VLC_CODEC_EAC3 ;
 scalar_t__ VLC_CODEC_MLP ;
 scalar_t__ VLC_CODEC_SPDIFB ;
 scalar_t__ VLC_CODEC_SPDIFL ;
 scalar_t__ VLC_CODEC_TRUEHD ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int * calloc (int,int) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    filter_t *p_filter = (filter_t *)p_this;
    filter_sys_t *p_sys;

    if( ( p_filter->fmt_in.audio.i_format != VLC_CODEC_DTS &&
          p_filter->fmt_in.audio.i_format != VLC_CODEC_DTSHD &&
          p_filter->fmt_in.audio.i_format != VLC_CODEC_A52 &&
          p_filter->fmt_in.audio.i_format != VLC_CODEC_EAC3 &&
          p_filter->fmt_in.audio.i_format != VLC_CODEC_MLP &&
          p_filter->fmt_in.audio.i_format != VLC_CODEC_TRUEHD ) ||
        ( p_filter->fmt_out.audio.i_format != VLC_CODEC_SPDIFL &&
          p_filter->fmt_out.audio.i_format != VLC_CODEC_SPDIFB ) )
        return VLC_EGENERIC;

    p_sys = p_filter->p_sys = calloc( 1, sizeof(filter_sys_t) );
    if( unlikely( p_sys == ((void*)0) ) )
        return VLC_ENOMEM;

    p_filter->pf_audio_filter = DoWork;
    p_filter->pf_flush = Flush;

    return VLC_SUCCESS;
}
