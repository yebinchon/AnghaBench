
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_9__ {int i_channels; int i_format; } ;
struct TYPE_7__ {TYPE_5__ audio; } ;
struct TYPE_6__ {TYPE_5__ audio; } ;
struct TYPE_8__ {int pf_audio_filter; TYPE_2__ fmt_in; TYPE_1__ fmt_out; } ;
typedef TYPE_3__ filter_t ;


 int Process ;
 int VLC_CODEC_FL32 ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int aout_FormatPrepare (TYPE_5__*) ;
 int msg_Err (TYPE_3__*,char*) ;

__attribute__((used)) static int Open (vlc_object_t *obj)
{
    filter_t *filter = (filter_t *)obj;

    if (filter->fmt_in.audio.i_channels != 2)
    {
        msg_Err (filter, "voice removal requires stereo");
        return VLC_EGENERIC;
    }

    filter->fmt_in.audio.i_format = VLC_CODEC_FL32;
    aout_FormatPrepare(&filter->fmt_in.audio);
    filter->fmt_out.audio = filter->fmt_in.audio;
    filter->pf_audio_filter = Process;
    return VLC_SUCCESS;
}
