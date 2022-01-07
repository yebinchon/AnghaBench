
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int i_format; int i_rate; int i_bytes_per_frame; int i_physical_channels; int i_bitspersample; int i_channels; } ;
typedef TYPE_3__ audio_sample_format_t ;
struct TYPE_9__ {int wValidBitsPerSample; } ;
struct TYPE_8__ {int nSamplesPerSec; int nAvgBytesPerSec; int nBlockAlign; int cbSize; int wBitsPerSample; int nChannels; int wFormatTag; } ;
struct TYPE_11__ {int dwChannelMask; TYPE_2__ Samples; TYPE_1__ Format; void* SubFormat; } ;
typedef TYPE_4__ WAVEFORMATEXTENSIBLE ;


 void* KSDATAFORMAT_SUBTYPE_IEEE_FLOAT ;
 void* KSDATAFORMAT_SUBTYPE_PCM ;




 int WAVE_FORMAT_EXTENSIBLE ;
 int aout_FormatPrepare (TYPE_3__*) ;
 int * chans_in ;
 int* pi_vlc_chan_order_wg4 ;

__attribute__((used)) static void vlc_ToWave(WAVEFORMATEXTENSIBLE *restrict wf,
                       audio_sample_format_t *restrict audio)
{
    switch (audio->i_format)
    {
        case 130:
            audio->i_format = 131;

        case 131:
            wf->SubFormat = KSDATAFORMAT_SUBTYPE_IEEE_FLOAT;
            break;

        case 128:
            audio->i_format = 129;

        case 129:
            wf->SubFormat = KSDATAFORMAT_SUBTYPE_PCM;
            break;

        default:
            audio->i_format = 131;
            wf->SubFormat = KSDATAFORMAT_SUBTYPE_IEEE_FLOAT;
            break;
    }
    aout_FormatPrepare (audio);

    wf->Format.wFormatTag = WAVE_FORMAT_EXTENSIBLE;
    wf->Format.nChannels = audio->i_channels;
    wf->Format.nSamplesPerSec = audio->i_rate;
    wf->Format.nAvgBytesPerSec = audio->i_bytes_per_frame * audio->i_rate;
    wf->Format.nBlockAlign = audio->i_bytes_per_frame;
    wf->Format.wBitsPerSample = audio->i_bitspersample;
    wf->Format.cbSize = sizeof (*wf) - sizeof (wf->Format);

    wf->Samples.wValidBitsPerSample = audio->i_bitspersample;

    wf->dwChannelMask = 0;
    for (unsigned i = 0; pi_vlc_chan_order_wg4[i]; i++)
        if (audio->i_physical_channels & pi_vlc_chan_order_wg4[i])
            wf->dwChannelMask |= chans_in[i];
}
