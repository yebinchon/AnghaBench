
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int i_format; int i_rate; int i_bytes_per_frame; int i_frame_length; } ;
typedef TYPE_3__ audio_sample_format_t ;
struct TYPE_8__ {int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int cbSize; int wFormatTag; } ;
struct TYPE_7__ {int wValidBitsPerSample; } ;
struct TYPE_10__ {int dwChannelMask; TYPE_2__ Format; TYPE_1__ Samples; int SubFormat; } ;
typedef TYPE_4__ WAVEFORMATEXTENSIBLE ;


 int SPEAKER_FRONT_LEFT ;
 int SPEAKER_FRONT_RIGHT ;




 int WAVE_FORMAT_EXTENSIBLE ;
 int _KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_DIGITAL ;
 int _KSDATAFORMAT_SUBTYPE_IEC61937_DTS ;
 int _KSDATAFORMAT_SUBTYPE_WAVEFORMATEX ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void vlc_SpdifToWave(WAVEFORMATEXTENSIBLE *restrict wf,
                            audio_sample_format_t *restrict audio)
{
    switch (audio->i_format)
    {
    case 130:
        if (audio->i_rate < 48000)
        {

            wf->SubFormat = _KSDATAFORMAT_SUBTYPE_WAVEFORMATEX;
        }
        else
            wf->SubFormat = _KSDATAFORMAT_SUBTYPE_IEC61937_DTS;
        break;
    case 128:
    case 129:
    case 131:
        wf->SubFormat = _KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_DIGITAL;
        break;
    default:
        vlc_assert_unreachable();
    }

    wf->Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
    wf->Format.nChannels = 2;
    wf->Format.nSamplesPerSec = audio->i_rate;
    wf->Format.wBitsPerSample = 16;
    wf->Format.nBlockAlign = 4;
    wf->Format.nAvgBytesPerSec = wf->Format.nSamplesPerSec * wf->Format.nBlockAlign;
    wf->Format.cbSize = sizeof (*wf) - sizeof (wf->Format);

    wf->Samples.wValidBitsPerSample = wf->Format.wBitsPerSample;

    wf->dwChannelMask = SPEAKER_FRONT_LEFT | SPEAKER_FRONT_RIGHT;

    audio->i_format = 128;
    audio->i_bytes_per_frame = wf->Format.nBlockAlign;
    audio->i_frame_length = 1;
}
