
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_9__ ;
typedef struct TYPE_27__ TYPE_8__ ;
typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;
typedef struct TYPE_19__ TYPE_13__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_28__ {int nChannels; int nBitRate; int nSampleRate; } ;
struct TYPE_27__ {int nChannels; int nSampleRate; int nBitRate; int eChannelMode; } ;
struct TYPE_26__ {int nChannels; int nSampleRate; int nBitRate; int eChannelMode; } ;
struct TYPE_25__ {int nChannels; } ;
struct TYPE_24__ {int nChannels; } ;
struct TYPE_23__ {int nChannels; } ;
struct TYPE_22__ {int nChannels; int nBitRate; } ;
struct TYPE_21__ {int nChannels; int nSampleRate; int nBitsPerSample; } ;
struct TYPE_20__ {int nChannels; int nSamplingRate; int nBitPerSample; } ;
struct TYPE_19__ {int nSize; int nPortIndex; } ;
struct TYPE_17__ {int nChannels; int nSamplingRate; int nBitsPerFrame; } ;
struct TYPE_16__ {int nChannels; int nBitRate; int nSamplingRate; int nBlockAlign; } ;
struct TYPE_18__ {TYPE_11__ ra; TYPE_10__ wma; TYPE_9__ vorbis; TYPE_8__ mp3; TYPE_7__ aac; TYPE_6__ g729; TYPE_5__ g726; TYPE_4__ g723; TYPE_3__ amr; TYPE_2__ adpcm; TYPE_1__ pcm; TYPE_13__ common; } ;
typedef TYPE_12__ OmxFormatParam ;
typedef int OMX_U32 ;
typedef int OMX_INDEXTYPE ;
typedef int OMX_HANDLETYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef int OMX_AUDIO_CODINGTYPE ;


 int GetAudioParamFormatIndex (int) ;
 int GetAudioParamSize (int ) ;
 int OMX_AUDIO_ChannelModeStereo ;
 scalar_t__ OMX_ErrorBadParameter ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_ErrorNotImplemented ;
 scalar_t__ OMX_GetParameter (int ,int ,TYPE_12__*) ;
 int OMX_INIT_COMMON (TYPE_13__) ;

OMX_ERRORTYPE GetAudioParameters(OMX_HANDLETYPE handle,
    OmxFormatParam *param, OMX_U32 i_port, OMX_AUDIO_CODINGTYPE encoding,
    uint8_t *pi_channels, unsigned int *pi_samplerate,
    unsigned int *pi_bitrate, unsigned int *pi_bps, unsigned int *pi_blocksize)
{
    int i_channels = 0, i_samplerate = 0, i_bitrate = 0;
    int i_bps = 0, i_blocksize = 0;
    OMX_ERRORTYPE omx_error;
    OMX_INDEXTYPE index;

    OMX_INIT_COMMON(param->common);
    param->common.nPortIndex = i_port;
    index = GetAudioParamFormatIndex(encoding);
    if(!index) return OMX_ErrorNotImplemented;

    param->common.nSize = GetAudioParamSize(index);
    omx_error = OMX_GetParameter(handle, index, param);
    if(omx_error != OMX_ErrorNone) return omx_error;

    switch(encoding)
    {
    case 131:
    case 136:
        i_channels = param->pcm.nChannels;
        i_samplerate = param->pcm.nSamplingRate;
        i_bps = param->pcm.nBitPerSample;
        break;
    case 138:
        i_channels = param->adpcm.nChannels;
        i_samplerate = param->adpcm.nSampleRate;
        i_bps = param->adpcm.nBitsPerSample;
        break;
    case 137:
        i_channels = param->amr.nChannels;
        i_bitrate = param->amr.nBitRate;
        i_samplerate = 8000;
        break;
    case 135:
        i_channels = param->g723.nChannels;
        break;
    case 134:
        i_channels = param->g726.nChannels;
        break;
    case 133:
        i_channels = param->g729.nChannels;
        break;
    case 139:
        i_channels = param->aac.nChannels;
        i_samplerate = param->aac.nSampleRate;
        i_bitrate = param->aac.nBitRate;
        i_channels = param->aac.eChannelMode == OMX_AUDIO_ChannelModeStereo ? 2 : 1;
        break;
    case 132:
        i_channels = param->mp3.nChannels;
        i_samplerate = param->mp3.nSampleRate;
        i_bitrate = param->mp3.nBitRate;
        i_channels = param->mp3.eChannelMode == OMX_AUDIO_ChannelModeStereo ? 2 : 1;
        break;
    case 129:
        i_channels = param->vorbis.nChannels;
        i_bitrate = param->vorbis.nBitRate;
        i_samplerate = param->vorbis.nSampleRate;
        break;
    case 128:
        i_channels = param->wma.nChannels;
        i_bitrate = param->wma.nBitRate;
        i_samplerate = param->wma.nSamplingRate;
        i_blocksize = param->wma.nBlockAlign;
        break;
    case 130:
        i_channels = param->ra.nChannels;
        i_samplerate = param->ra.nSamplingRate;
        i_bps = param->ra.nBitsPerFrame;
        break;
    default:
        return OMX_ErrorBadParameter;
    }

    if(pi_channels) *pi_channels = i_channels;
    if(pi_samplerate) *pi_samplerate = i_samplerate;
    if(pi_bitrate) *pi_bitrate = i_bitrate;
    if(pi_bps) *pi_bps = i_bps;
    if(pi_blocksize) *pi_blocksize = i_blocksize;
    return OMX_ErrorNone;
}
