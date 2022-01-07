
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int i_format; int i_bytes_per_frame; int i_frame_length; int i_rate; int channel_type; } ;
typedef TYPE_1__ audio_sample_format_t ;
typedef int audio_output_t ;


 int AOUT_FMT_LINEAR (TYPE_1__*) ;
 int AUDIO_CHANNEL_TYPE_BITMAP ;
 int HAVE_FPU ;



 int VLC_CODEC_FL32 ;

 int VLC_CODEC_S16N ;
 void* VLC_CODEC_SPDIFL ;

 int VLC_SUCCESS ;
 int aout_FormatNbChannels (TYPE_1__*) ;
 int assert (int) ;

__attribute__((used)) static int Start(audio_output_t *aout, audio_sample_format_t *restrict fmt)
{
    (void) aout;

    switch (fmt->i_format)
    {
        case 132:
        case 130:
            fmt->i_format = VLC_CODEC_SPDIFL;
            fmt->i_bytes_per_frame = 4;
            fmt->i_frame_length = 1;
            break;
        case 131:
        case 128:
        case 129:
            fmt->i_format = VLC_CODEC_SPDIFL;
            fmt->i_rate = 768000;
            fmt->i_bytes_per_frame = 16;
            fmt->i_frame_length = 1;
            break;
        default:
            assert(AOUT_FMT_LINEAR(fmt));
            assert(aout_FormatNbChannels(fmt) > 0);
            fmt->i_format = HAVE_FPU ? VLC_CODEC_FL32 : VLC_CODEC_S16N;
            fmt->channel_type = AUDIO_CHANNEL_TYPE_BITMAP;
            break;
    }

    return VLC_SUCCESS;
}
