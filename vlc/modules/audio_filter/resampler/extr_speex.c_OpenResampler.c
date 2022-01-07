
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
struct TYPE_8__ {int i_format; scalar_t__ i_channels; int i_rate; } ;
struct TYPE_9__ {TYPE_3__ audio; } ;
struct TYPE_6__ {int i_format; scalar_t__ i_channels; scalar_t__ i_physical_channels; int i_rate; } ;
struct TYPE_7__ {TYPE_1__ audio; } ;
struct TYPE_10__ {int pf_audio_filter; int * p_sys; TYPE_4__ fmt_out; TYPE_2__ fmt_in; } ;
typedef TYPE_5__ filter_t ;
typedef int SpeexResamplerState ;


 int Resample ;


 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int msg_Err (int *,char*,int ) ;
 int * speex_resampler_init (scalar_t__,int ,int ,unsigned int,int*) ;
 int speex_resampler_strerror (int) ;
 scalar_t__ unlikely (int) ;
 unsigned int var_InheritInteger (int *,char*) ;

__attribute__((used)) static int OpenResampler (vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;


    if (filter->fmt_in.audio.i_format != filter->fmt_out.audio.i_format

     || filter->fmt_in.audio.i_channels != filter->fmt_out.audio.i_channels
     || filter->fmt_in.audio.i_physical_channels == 0 )
        return VLC_EGENERIC;

    switch (filter->fmt_in.audio.i_format)
    {
        case 129: break;
        case 128: break;
        default: return VLC_EGENERIC;
    }

    SpeexResamplerState *st;

    unsigned q = var_InheritInteger (obj, "speex-resampler-quality");
    if (unlikely(q > 10))
        q = 3;

    int err;
    st = speex_resampler_init(filter->fmt_in.audio.i_channels,
                              filter->fmt_in.audio.i_rate,
                              filter->fmt_out.audio.i_rate, q, &err);
    if (unlikely(st == ((void*)0)))
    {
        msg_Err (obj, "cannot initialize resampler: %s",
                 speex_resampler_strerror (err));
        return VLC_ENOMEM;
    }

    filter->p_sys = st;
    filter->pf_audio_filter = Resample;
    return VLC_SUCCESS;
}
