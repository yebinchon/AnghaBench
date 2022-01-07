
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int i_format; int i_rate; int i_bytes_per_frame; int i_frame_length; int i_channels; } ;
typedef TYPE_3__ audio_sample_format_t ;
struct TYPE_9__ {int nChannels; int nSamplesPerSec; int wBitsPerSample; int nBlockAlign; int nAvgBytesPerSec; int cbSize; int wFormatTag; } ;
struct TYPE_8__ {int wValidBitsPerSample; } ;
struct TYPE_12__ {TYPE_2__ Format; TYPE_1__ Samples; void* dwChannelMask; int SubFormat; } ;
struct TYPE_11__ {int dwEncodedSamplesPerSec; scalar_t__ dwAverageBytesPerSec; int dwEncodedChannelCount; TYPE_5__ FormatExt; } ;
typedef TYPE_4__ WAVEFORMATEXTENSIBLE_IEC61937 ;
typedef TYPE_5__ WAVEFORMATEXTENSIBLE ;


 void* KSAUDIO_SPEAKER_5POINT1 ;
 void* KSAUDIO_SPEAKER_7POINT1 ;



 int VLC_CODEC_SPDIFL ;

 int WAVE_FORMAT_EXTENSIBLE ;
 int _KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_DIGITAL_PLUS ;
 int _KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_MLP ;
 int _KSDATAFORMAT_SUBTYPE_IEC61937_DTS_HD ;
 int vlc_assert_unreachable () ;

__attribute__((used)) static void vlc_HdmiToWave(WAVEFORMATEXTENSIBLE_IEC61937 *restrict wf_iec61937,
                           audio_sample_format_t *restrict audio)
{
    WAVEFORMATEXTENSIBLE *wf = &wf_iec61937->FormatExt;

    switch (audio->i_format)
    {
    case 131:
        wf->SubFormat = _KSDATAFORMAT_SUBTYPE_IEC61937_DTS_HD;
        wf->Format.nChannels = 8;
        wf->dwChannelMask = KSAUDIO_SPEAKER_7POINT1;
        audio->i_rate = 768000;
        break;
    case 130:
        wf->SubFormat = _KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_DIGITAL_PLUS;
        wf->Format.nChannels = 2;
        wf->dwChannelMask = KSAUDIO_SPEAKER_5POINT1;
        break;
    case 128:
    case 129:
        wf->SubFormat = _KSDATAFORMAT_SUBTYPE_IEC61937_DOLBY_MLP;
        wf->Format.nChannels = 8;
        wf->dwChannelMask = KSAUDIO_SPEAKER_7POINT1;
        audio->i_rate = 768000;
        break;
    default:
        vlc_assert_unreachable();
    }
    wf->Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
    wf->Format.nSamplesPerSec = 192000;
    wf->Format.wBitsPerSample = 16;
    wf->Format.nBlockAlign = wf->Format.wBitsPerSample / 8 * wf->Format.nChannels;
    wf->Format.nAvgBytesPerSec = wf->Format.nSamplesPerSec * wf->Format.nBlockAlign;
    wf->Format.cbSize = sizeof (*wf_iec61937) - sizeof (wf->Format);

    wf->Samples.wValidBitsPerSample = wf->Format.wBitsPerSample;

    wf_iec61937->dwEncodedSamplesPerSec = audio->i_rate;
    wf_iec61937->dwEncodedChannelCount = audio->i_channels;
    wf_iec61937->dwAverageBytesPerSec = 0;

    audio->i_format = VLC_CODEC_SPDIFL;
    audio->i_bytes_per_frame = wf->Format.nBlockAlign;
    audio->i_frame_length = 1;
}
