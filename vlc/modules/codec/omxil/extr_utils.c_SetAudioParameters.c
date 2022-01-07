
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef int uint8_t ;
struct TYPE_8__ {int nChannels; unsigned int nSamplingRate; unsigned int nBitPerSample; unsigned int nSampleRate; unsigned int nBitsPerSample; unsigned int nBitRate; int nFrameLength; unsigned int nBlockAlign; unsigned int nBitsPerFrame; unsigned int nMaxBitRate; int nQuality; void* bDownmix; void* bManaged; int nAudioBandWidth; int nMinBitRate; int eFormat; int nNumRegions; int nCouplingStartRegion; int nCouplingQuantBits; int nSamplePerFrame; int nSuperBlockAlign; int nEncodeOptions; int eProfile; void* eChannelMode; int eAACStreamFormat; int eAACProfile; int nAACERtools; int nAACtools; int eBitType; void* bDTX; int eG726Mode; void* bPostFilter; void* bHiPassFilter; int eBitRate; int eAMRFrameFormat; int eAMRDTXMode; int eAMRBandMode; int * eChannelMapping; void* bInterleaved; int eEndian; int ePCMMode; int eNumData; } ;
struct TYPE_6__ {int nPortIndex; } ;
struct TYPE_7__ {TYPE_1__ common; TYPE_5__ vorbis; TYPE_5__ ra; TYPE_5__ wma; TYPE_5__ mp3; TYPE_5__ aac; TYPE_5__ g729; TYPE_5__ g726; TYPE_5__ g723; TYPE_5__ amr; TYPE_5__ adpcm; TYPE_5__ pcm; } ;
typedef TYPE_2__ OmxFormatParam ;
typedef int OMX_U32 ;
typedef int OMX_INDEXTYPE ;
typedef int OMX_HANDLETYPE ;
typedef int OMX_ERRORTYPE ;
typedef int OMX_AUDIO_CODINGTYPE ;


 int GetAudioParamFormatIndex (int) ;
 int OMX_AUDIO_AACERAll ;
 int OMX_AUDIO_AACObjectLC ;
 int OMX_AUDIO_AACStreamFormatMP4FF ;
 int OMX_AUDIO_AACToolAll ;
 int OMX_AUDIO_AMRBandModeNB0 ;
 int OMX_AUDIO_AMRBandModeWB0 ;
 int OMX_AUDIO_AMRDTXModeOff ;
 int OMX_AUDIO_AMRFrameFormatFSF ;
 int OMX_AUDIO_ChannelCF ;
 int OMX_AUDIO_ChannelLF ;
 void* OMX_AUDIO_ChannelModeMono ;
 void* OMX_AUDIO_ChannelModeStereo ;
 int OMX_AUDIO_ChannelRF ;
 int OMX_AUDIO_G723ModeUnused ;
 int OMX_AUDIO_G726ModeUnused ;
 int OMX_AUDIO_G729 ;
 int OMX_AUDIO_MP3StreamFormatMP1Layer3 ;
 int OMX_AUDIO_PCMModeLinear ;
 int OMX_AUDIO_RAFormatUnused ;
 int OMX_AUDIO_WMAFormatUnused ;
 int OMX_AUDIO_WMAProfileUnused ;
 int OMX_EndianLittle ;
 int OMX_ErrorBadParameter ;
 void* OMX_FALSE ;
 int OMX_INIT_STRUCTURE (TYPE_5__) ;
 int OMX_NumericalDataSigned ;
 int OMX_SetParameter (int ,int ,TYPE_2__*) ;
 void* OMX_TRUE ;
 int VLC_CODEC_AMR_WB ;

OMX_ERRORTYPE SetAudioParameters(OMX_HANDLETYPE handle,
    OmxFormatParam *param, OMX_U32 i_port, OMX_AUDIO_CODINGTYPE encoding,
    vlc_fourcc_t i_codec, uint8_t i_channels, unsigned int i_samplerate,
    unsigned int i_bitrate, unsigned int i_bps, unsigned int i_blocksize)
{
    OMX_INDEXTYPE index;

    switch(encoding)
    {
    case 131:
    case 136:
        OMX_INIT_STRUCTURE(param->pcm);
        param->pcm.nChannels = i_channels;
        param->pcm.nSamplingRate = i_samplerate;
        param->pcm.eNumData = OMX_NumericalDataSigned;
        param->pcm.ePCMMode = OMX_AUDIO_PCMModeLinear;
        param->pcm.eEndian = OMX_EndianLittle;
        param->pcm.bInterleaved = OMX_TRUE;
        param->pcm.nBitPerSample = i_bps;
        param->pcm.eChannelMapping[0] = OMX_AUDIO_ChannelCF;
        if(i_channels == 2)
        {
            param->pcm.eChannelMapping[0] = OMX_AUDIO_ChannelLF;
            param->pcm.eChannelMapping[1] = OMX_AUDIO_ChannelRF;
        }
        break;
    case 138:
        OMX_INIT_STRUCTURE(param->adpcm);
        param->adpcm.nChannels = i_channels;
        param->adpcm.nSampleRate = i_samplerate;
        param->adpcm.nBitsPerSample = i_bps;
        break;
    case 137:
        OMX_INIT_STRUCTURE(param->amr);
        param->amr.nChannels = i_channels;
        param->amr.nBitRate = i_bitrate;
        if (i_codec == VLC_CODEC_AMR_WB)
            param->amr.eAMRBandMode = OMX_AUDIO_AMRBandModeWB0;
        else
            param->amr.eAMRBandMode = OMX_AUDIO_AMRBandModeNB0;
        param->amr.eAMRDTXMode = OMX_AUDIO_AMRDTXModeOff;
        param->amr.eAMRFrameFormat = OMX_AUDIO_AMRFrameFormatFSF;
        break;
    case 135:
        OMX_INIT_STRUCTURE(param->g723);
        param->g723.nChannels = i_channels;
        param->g723.bDTX = OMX_FALSE;
        param->g723.eBitRate = OMX_AUDIO_G723ModeUnused;
        param->g723.bHiPassFilter = OMX_TRUE;
        param->g723.bPostFilter = OMX_TRUE;
        break;
    case 134:
        OMX_INIT_STRUCTURE(param->g726);
        param->g726.nChannels = i_channels;
        param->g726.eG726Mode = OMX_AUDIO_G726ModeUnused;
        break;
    case 133:
        OMX_INIT_STRUCTURE(param->g729);
        param->g729.nChannels = i_channels;
        param->g729.bDTX = OMX_FALSE;
        param->g729.eBitType = OMX_AUDIO_G729;
        break;
    case 139:
        OMX_INIT_STRUCTURE(param->aac);
        param->aac.nChannels = i_channels;
        param->aac.nSampleRate = i_samplerate;
        param->aac.nBitRate = i_bitrate;
        param->aac.nAudioBandWidth = 0;
        param->aac.nFrameLength = 1024;
        param->aac.nAACtools = OMX_AUDIO_AACToolAll;
        param->aac.nAACERtools = OMX_AUDIO_AACERAll;
        param->aac.eAACProfile = OMX_AUDIO_AACObjectLC;
        param->aac.eAACStreamFormat = OMX_AUDIO_AACStreamFormatMP4FF;
        param->aac.eChannelMode = i_channels > 1 ?
            OMX_AUDIO_ChannelModeStereo : OMX_AUDIO_ChannelModeMono;
        break;
    case 132:
        OMX_INIT_STRUCTURE(param->mp3);
        param->mp3.nChannels = i_channels;
        param->mp3.nSampleRate = i_samplerate;
        param->mp3.nBitRate = i_bitrate;
        param->mp3.eChannelMode = i_channels > 1 ?
            OMX_AUDIO_ChannelModeStereo : OMX_AUDIO_ChannelModeMono;
        param->mp3.eFormat = OMX_AUDIO_MP3StreamFormatMP1Layer3;
        break;
    case 128:
        OMX_INIT_STRUCTURE(param->wma);
        param->wma.nChannels = i_channels;
        param->wma.nBitRate = i_bitrate;
        param->wma.eFormat = OMX_AUDIO_WMAFormatUnused;
        param->wma.eProfile = OMX_AUDIO_WMAProfileUnused;
        param->wma.nSamplingRate = i_samplerate;
        param->wma.nBlockAlign = i_blocksize;
        param->wma.nEncodeOptions = 0;
        param->wma.nSuperBlockAlign = 0;
        break;
    case 130:
        OMX_INIT_STRUCTURE(param->ra);
        param->ra.nChannels = i_channels;
        param->ra.nSamplingRate = i_samplerate;
        param->ra.nBitsPerFrame = i_bps;
        param->ra.nSamplePerFrame = 0;
        param->ra.nCouplingQuantBits = 0;
        param->ra.nCouplingStartRegion = 0;
        param->ra.nNumRegions = 0;
        param->ra.eFormat = OMX_AUDIO_RAFormatUnused;
        break;
    case 129:
        OMX_INIT_STRUCTURE(param->vorbis);
        param->vorbis.nChannels = i_channels;
        param->vorbis.nBitRate = i_bitrate;
        param->vorbis.nMinBitRate = 0;
        param->vorbis.nMaxBitRate = i_bitrate;
        param->vorbis.nSampleRate = i_samplerate;
        param->vorbis.nAudioBandWidth = 0;
        param->vorbis.nQuality = 3;
        param->vorbis.bManaged = OMX_FALSE;
        param->vorbis.bDownmix = OMX_FALSE;
        break;
    default:
        return OMX_ErrorBadParameter;
    }

    param->common.nPortIndex = i_port;

    index = GetAudioParamFormatIndex(encoding);
    return OMX_SetParameter(handle, index, param);
}
