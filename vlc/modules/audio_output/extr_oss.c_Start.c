
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_13__ {int i_format; int i_rate; int i_bytes_per_frame; int i_physical_channels; int channel_type; int i_frame_length; } ;
typedef TYPE_1__ audio_sample_format_t ;
struct TYPE_14__ {int flush; int pause; int play; int time_get; TYPE_3__* sys; } ;
typedef TYPE_2__ audio_output_t ;
struct TYPE_15__ {char* device; int fd; int starting; TYPE_1__ format; } ;
typedef TYPE_3__ aout_sys_t ;


 int A52_FRAME_NB ;





 int AOUT_CHANS_4_0 ;
 int AOUT_CHANS_5_1 ;
 int AOUT_CHANS_7_1 ;
 int AOUT_CHANS_STEREO ;
 int AOUT_CHAN_CENTER ;
 int AOUT_FMT_SPDIF (TYPE_1__*) ;
 int AOUT_MAX_ADVANCE_TIME ;
 int AOUT_MIN_PREPARE_TIME ;
 void* AOUT_SPDIF_SIZE ;
 int AUDIO_CHANNEL_TYPE_BITMAP ;
 int CLOCK_FREQ ;
 int Flush ;
 int HAVE_FPU ;
 int O_WRONLY ;
 int Pause ;
 int Play ;
 int SNDCTL_DSP_CHANNELS ;
 int SNDCTL_DSP_SETFMT ;
 int SNDCTL_DSP_SETFRAGMENT ;
 int SNDCTL_DSP_SPEED ;
 int TimeGet ;




 int VLC_CODEC_SPDIFL ;

 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int aout_FormatNbChannels (TYPE_1__*) ;
 int aout_FormatPrepare (TYPE_1__*) ;
 int aout_SoftVolumeStart (TYPE_2__*) ;
 int clz (int) ;
 int errno ;
 char* getenv (char*) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int msg_Dbg (TYPE_2__*,char*,char const*) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 scalar_t__ unlikely (int) ;
 int var_InheritBool (TYPE_2__*,char*) ;
 int vlc_close (int) ;
 int vlc_open (char const*,int ) ;
 int vlc_strerror_c (int ) ;

__attribute__((used)) static int Start (audio_output_t *aout, audio_sample_format_t *restrict fmt)
{
    aout_sys_t* sys = aout->sys;

    if (aout_FormatNbChannels(fmt) == 0)
        return VLC_EGENERIC;


    const char *device = sys->device;
    if (device == ((void*)0))
        device = getenv ("OSS_AUDIODEV");
    if (device == ((void*)0))
        device = "/dev/dsp";

    int fd = vlc_open (device, O_WRONLY);
    if (fd == -1)
    {
        msg_Err (aout, "cannot open OSS device %s: %s", device,
                 vlc_strerror_c(errno));
        return VLC_EGENERIC;
    }
    msg_Dbg (aout, "using OSS device: %s", device);


    int format;
    bool spdif = 0;

    switch (fmt->i_format)
    {

        case 131:
        case 132:
            format = 136;
            break;

        case 129:
            format = 134;
            break;
        case 130:
            format = 135;
            break;
        case 128:
            format = 133;
            break;
        default:
            if (AOUT_FMT_SPDIF(fmt))
                spdif = var_InheritBool(aout, "oss-spdif");
            if (spdif)
                format = 137;

            else if (HAVE_FPU)
                format = 136;

            else
                format = 135;
    }

    if (ioctl (fd, SNDCTL_DSP_SETFMT, &format) < 0)
    {
        msg_Err (aout, "cannot set audio format 0x%X: %s", format,
                 vlc_strerror_c(errno));
        goto error;
    }

    switch (format)
    {
        case 133: fmt->i_format = 128; break;
        case 135: fmt->i_format = 130; break;
        case 134: fmt->i_format = 129; break;

        case 136: fmt->i_format = 132; break;

        case 137:
            if (spdif)
            {
                fmt->i_format = VLC_CODEC_SPDIFL;
                break;
            }
        default:
            msg_Err (aout, "unsupported audio format 0x%X", format);
            goto error;
    }


    int channels = spdif ? 2 : aout_FormatNbChannels (fmt);
    if (ioctl (fd, SNDCTL_DSP_CHANNELS, &channels) < 0)
    {
        msg_Err (aout, "cannot set %d channels: %s", channels,
                 vlc_strerror_c(errno));
        goto error;
    }

    switch (channels)
    {
        case 1: channels = AOUT_CHAN_CENTER; break;
        case 2: channels = AOUT_CHANS_STEREO; break;
        case 4: channels = AOUT_CHANS_4_0; break;
        case 6: channels = AOUT_CHANS_5_1; break;
        case 8: channels = AOUT_CHANS_7_1; break;
        default:
            msg_Err (aout, "unsupported channels count %d", channels);
            goto error;
    }


    int rate = spdif ? 48000 : fmt->i_rate;
    if (ioctl (fd, SNDCTL_DSP_SPEED, &rate) < 0)
    {
        msg_Err (aout, "cannot set %d Hz sample rate: %s", rate,
                 vlc_strerror_c(errno));
        goto error;
    }


    aout->time_get = TimeGet;
    aout->play = Play;
    aout->pause = Pause;
    aout->flush = Flush;

    if (spdif)
    {
        fmt->i_bytes_per_frame = AOUT_SPDIF_SIZE;
        fmt->i_frame_length = A52_FRAME_NB;
    }
    else
    {
        fmt->i_rate = rate;
        fmt->i_physical_channels = channels;
    }
    fmt->channel_type = AUDIO_CHANNEL_TYPE_BITMAP;
    aout_FormatPrepare (fmt);


    uint32_t bytes;
    if (spdif)
        bytes = AOUT_SPDIF_SIZE;
    else
        bytes = fmt->i_rate / (CLOCK_FREQ / AOUT_MIN_PREPARE_TIME)
                * fmt->i_bytes_per_frame;
    if (unlikely(bytes < 16))
        bytes = 16;

    int frag = (AOUT_MAX_ADVANCE_TIME / AOUT_MIN_PREPARE_TIME) << 16
             | (32 - clz(bytes - 1));
    if (ioctl (fd, SNDCTL_DSP_SETFRAGMENT, &frag) < 0)
        msg_Err (aout, "cannot set 0x%08x fragment: %s", frag,
                 vlc_strerror_c(errno));

    sys->fd = fd;
    aout_SoftVolumeStart (aout);
    sys->starting = 1;
    sys->format = *fmt;
    return VLC_SUCCESS;
error:
    vlc_close (fd);
    return VLC_EGENERIC;
}
