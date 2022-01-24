#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_13__ {int i_format; int i_rate; int i_bytes_per_frame; int i_physical_channels; int /*<<< orphan*/  channel_type; int /*<<< orphan*/  i_frame_length; } ;
typedef  TYPE_1__ audio_sample_format_t ;
struct TYPE_14__ {int /*<<< orphan*/  flush; int /*<<< orphan*/  pause; int /*<<< orphan*/  play; int /*<<< orphan*/  time_get; TYPE_3__* sys; } ;
typedef  TYPE_2__ audio_output_t ;
struct TYPE_15__ {char* device; int fd; int starting; TYPE_1__ format; } ;
typedef  TYPE_3__ aout_sys_t ;

/* Variables and functions */
 int /*<<< orphan*/  A52_FRAME_NB ; 
#define  AFMT_AC3 137 
#define  AFMT_FLOAT 136 
#define  AFMT_S16_NE 135 
#define  AFMT_S32_NE 134 
#define  AFMT_U8 133 
 int AOUT_CHANS_4_0 ; 
 int AOUT_CHANS_5_1 ; 
 int AOUT_CHANS_7_1 ; 
 int AOUT_CHANS_STEREO ; 
 int AOUT_CHAN_CENTER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int AOUT_MAX_ADVANCE_TIME ; 
 int AOUT_MIN_PREPARE_TIME ; 
 void* AOUT_SPDIF_SIZE ; 
 int /*<<< orphan*/  AUDIO_CHANNEL_TYPE_BITMAP ; 
 int CLOCK_FREQ ; 
 int /*<<< orphan*/  Flush ; 
 int /*<<< orphan*/  HAVE_FPU ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  Pause ; 
 int /*<<< orphan*/  Play ; 
 int /*<<< orphan*/  SNDCTL_DSP_CHANNELS ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFMT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SETFRAGMENT ; 
 int /*<<< orphan*/  SNDCTL_DSP_SPEED ; 
 int /*<<< orphan*/  TimeGet ; 
#define  VLC_CODEC_FL32 132 
#define  VLC_CODEC_FL64 131 
#define  VLC_CODEC_S16N 130 
#define  VLC_CODEC_S32N 129 
 int VLC_CODEC_SPDIFL ; 
#define  VLC_CODEC_U8 128 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 char* FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*,...) ; 
 scalar_t__ FUNC9 (int) ; 
 int FUNC10 (TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int FUNC12 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14 (audio_output_t *aout, audio_sample_format_t *restrict fmt)
{
    aout_sys_t* sys = aout->sys;

    if (FUNC1(fmt) == 0)
        return VLC_EGENERIC;

    /* Open the device */
    const char *device = sys->device;
    if (device == NULL)
        device = FUNC5 ("OSS_AUDIODEV");
    if (device == NULL)
        device = "/dev/dsp";

    int fd = FUNC12 (device, O_WRONLY);
    if (fd == -1)
    {
        FUNC8 (aout, "cannot open OSS device %s: %s", device,
                 FUNC13(errno));
        return VLC_EGENERIC;
    }
    FUNC7 (aout, "using OSS device: %s", device);

    /* Select audio format */
    int format;
    bool spdif = false;

    switch (fmt->i_format)
    {
#ifdef AFMT_FLOAT
        case VLC_CODEC_FL64:
        case VLC_CODEC_FL32:
            format = AFMT_FLOAT;
            break;
#endif
        case VLC_CODEC_S32N:
            format = AFMT_S32_NE;
            break;
        case VLC_CODEC_S16N:
            format = AFMT_S16_NE;
            break;
        case VLC_CODEC_U8:
            format = AFMT_U8;
            break;
        default:
            if (FUNC0(fmt))
                spdif = FUNC10(aout, "oss-spdif");
            if (spdif)
                format = AFMT_AC3;
#ifdef AFMT_FLOAT
            else if (HAVE_FPU)
                format = AFMT_FLOAT;
#endif
            else
                format = AFMT_S16_NE;
    }

    if (FUNC6 (fd, SNDCTL_DSP_SETFMT, &format) < 0)
    {
        FUNC8 (aout, "cannot set audio format 0x%X: %s", format,
                 FUNC13(errno));
        goto error;
    }

    switch (format)
    {
        case AFMT_U8:     fmt->i_format = VLC_CODEC_U8;   break;
        case AFMT_S16_NE: fmt->i_format = VLC_CODEC_S16N; break;
        case AFMT_S32_NE: fmt->i_format = VLC_CODEC_S32N; break;
#ifdef AFMT_FLOAT
        case AFMT_FLOAT:  fmt->i_format = VLC_CODEC_FL32; break;
#endif
        case AFMT_AC3:
            if (spdif)
            {
                fmt->i_format = VLC_CODEC_SPDIFL;
                break;
            }
        default:
            FUNC8 (aout, "unsupported audio format 0x%X", format);
            goto error;
    }

    /* Select channels count */
    int channels = spdif ? 2 : FUNC1 (fmt);
    if (FUNC6 (fd, SNDCTL_DSP_CHANNELS, &channels) < 0)
    {
        FUNC8 (aout, "cannot set %d channels: %s", channels,
                 FUNC13(errno));
        goto error;
    }

    switch (channels)
    {
        case 1: channels = AOUT_CHAN_CENTER;  break;
        case 2: channels = AOUT_CHANS_STEREO; break;
        case 4: channels = AOUT_CHANS_4_0;    break;
        case 6: channels = AOUT_CHANS_5_1;    break;
        case 8: channels = AOUT_CHANS_7_1;    break;
        default:
            FUNC8 (aout, "unsupported channels count %d", channels);
            goto error;
    }

    /* Select sample rate */
    int rate = spdif ? 48000 : fmt->i_rate;
    if (FUNC6 (fd, SNDCTL_DSP_SPEED, &rate) < 0)
    {
        FUNC8 (aout, "cannot set %d Hz sample rate: %s", rate,
                 FUNC13(errno));
        goto error;
    }

    /* Setup audio_output_t */
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
    FUNC2 (fmt);

    /* Select timing */
    uint32_t bytes;
    if (spdif)
        bytes = AOUT_SPDIF_SIZE;
    else
        bytes = fmt->i_rate / (CLOCK_FREQ / AOUT_MIN_PREPARE_TIME)
                * fmt->i_bytes_per_frame;
    if (FUNC9(bytes < 16))
        bytes = 16;

    int frag = (AOUT_MAX_ADVANCE_TIME / AOUT_MIN_PREPARE_TIME) << 16
             | (32 - FUNC4(bytes - 1));
    if (FUNC6 (fd, SNDCTL_DSP_SETFRAGMENT, &frag) < 0)
        FUNC8 (aout, "cannot set 0x%08x fragment: %s", frag,
                 FUNC13(errno));

    sys->fd = fd;
    FUNC3 (aout);
    sys->starting = true;
    sys->format = *fmt;
    return VLC_SUCCESS;
error:
    FUNC11 (fd);
    return VLC_EGENERIC;
}