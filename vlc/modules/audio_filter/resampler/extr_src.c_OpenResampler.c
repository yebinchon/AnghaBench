
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
struct TYPE_8__ {scalar_t__ i_format; scalar_t__ i_channels; } ;
struct TYPE_9__ {TYPE_3__ audio; } ;
struct TYPE_6__ {scalar_t__ i_format; scalar_t__ i_channels; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct TYPE_10__ {int pf_audio_filter; int * p_sys; TYPE_4__ fmt_in; TYPE_2__ fmt_out; } ;
typedef TYPE_5__ filter_t ;
typedef int SRC_STATE ;


 int Resample ;
 scalar_t__ VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,int ) ;
 int * src_new (int,scalar_t__,int*) ;
 int src_strerror (int) ;
 int var_InheritInteger (int *,char*) ;

__attribute__((used)) static int OpenResampler (vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;


    if (filter->fmt_in.audio.i_format != VLC_CODEC_FL32
     || filter->fmt_out.audio.i_format != VLC_CODEC_FL32

     || filter->fmt_in.audio.i_channels != filter->fmt_out.audio.i_channels )
        return VLC_EGENERIC;

    int type = var_InheritInteger (obj, "src-converter-type");
    int err;

    SRC_STATE *s = src_new (type, filter->fmt_in.audio.i_channels, &err);
    if (s == ((void*)0))
    {
        msg_Err (obj, "cannot initialize resampler: %s", src_strerror (err));
        return VLC_EGENERIC;
    }

    filter->p_sys = s;
    filter->pf_audio_filter = Resample;
    return VLC_SUCCESS;
}
