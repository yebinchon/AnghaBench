
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef int uint8_t ;
typedef int decoder_t ;
struct TYPE_13__ {scalar_t__ eEncoding; } ;
struct TYPE_12__ {scalar_t__ nSliceHeight; scalar_t__ nStride; scalar_t__ eColorFormat; scalar_t__ eCompressionFormat; scalar_t__ xFramerate; scalar_t__ nFrameHeight; scalar_t__ nFrameWidth; } ;
struct TYPE_14__ {TYPE_2__ audio; TYPE_1__ video; } ;
struct TYPE_15__ {unsigned int nPorts; scalar_t__ nStartPortNumber; scalar_t__ nPortIndex; scalar_t__ eDir; int eDomain; TYPE_3__ format; scalar_t__ nHeight; scalar_t__ nWidth; scalar_t__ nTop; scalar_t__ nLeft; scalar_t__ bEnabled; scalar_t__ nBufferAlignment; scalar_t__ bBuffersContiguous; scalar_t__ nBufferSize; scalar_t__ nBufferCountMin; scalar_t__ nBufferCountActual; scalar_t__ nU32; } ;
typedef int OmxFormatParam ;
typedef scalar_t__ OMX_U32 ;
typedef TYPE_4__* OMX_PTR ;
typedef TYPE_4__ OMX_PORT_PARAM_TYPE ;
typedef TYPE_4__ OMX_PARAM_U32TYPE ;
typedef TYPE_4__ OMX_PARAM_PORTDEFINITIONTYPE ;
typedef int OMX_HANDLETYPE ;
typedef scalar_t__ OMX_ERRORTYPE ;
typedef TYPE_4__ OMX_CONFIG_RECTTYPE ;


 int GetAudioParameters (int ,int *,scalar_t__,scalar_t__,int *,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ;
 int GetVlcChromaFormat (scalar_t__,int *,char const**) ;
 int GetVlcVideoFormat (scalar_t__,int *,char const**) ;
 scalar_t__ OMX_ALL ;
 scalar_t__ OMX_DirOutput ;
 scalar_t__ OMX_ErrorNone ;
 scalar_t__ OMX_GetConfig (int ,int ,TYPE_4__*) ;
 scalar_t__ OMX_GetParameter (int ,scalar_t__,TYPE_4__*) ;
 int OMX_INIT_STRUCTURE (TYPE_4__) ;
 int OMX_IndexConfigCommonOutputCrop ;
 scalar_t__ OMX_IndexParamAudioInit ;
 scalar_t__ OMX_IndexParamNumAvailableStreams ;
 scalar_t__ OMX_IndexParamPortDefinition ;


 int OmxToVlcAudioFormat (scalar_t__,int *,char const**) ;
 int msg_Dbg (int *,char*,...) ;

void PrintOmx(decoder_t *p_dec, OMX_HANDLETYPE omx_handle, OMX_U32 i_port)
{
    OMX_PARAM_PORTDEFINITIONTYPE definition;
    OMX_PORT_PARAM_TYPE param;
    OMX_ERRORTYPE omx_error;
    unsigned int i, j;


    OMX_INIT_STRUCTURE(param);
    OMX_INIT_STRUCTURE(definition);

    for(i = 0; i < 3; i++)
    {
        omx_error = OMX_GetParameter(omx_handle, OMX_IndexParamAudioInit + i, &param);
        if(omx_error != OMX_ErrorNone) continue;

        if(i_port == OMX_ALL)
            msg_Dbg( p_dec, "found %i %s ports", (int)param.nPorts,
                     i == 0 ? "audio" : i == 1 ? "image" : "video" );

        for(j = 0; j < param.nPorts; j++)
        {
            unsigned int i_samplerate, i_bitrate;
            unsigned int i_bitspersample, i_blockalign;
            uint8_t i_channels;
            OmxFormatParam format_param;
            vlc_fourcc_t i_fourcc;
            const char *psz_name;
            OMX_CONFIG_RECTTYPE crop_rect;

            if(i_port != OMX_ALL && i_port != param.nStartPortNumber + j)
                continue;


            definition.nPortIndex = param.nStartPortNumber + j;
            omx_error = OMX_GetParameter(omx_handle, OMX_IndexParamPortDefinition,
                                      &definition);
            if(omx_error != OMX_ErrorNone) continue;

            OMX_PARAM_U32TYPE u32param;
            OMX_INIT_STRUCTURE(u32param);
            u32param.nPortIndex = param.nStartPortNumber + j;
            omx_error = OMX_GetParameter(omx_handle, OMX_IndexParamNumAvailableStreams,
                                         (OMX_PTR)&u32param);

            msg_Dbg( p_dec, "-> %s %i (%i streams) (%i:%i:%i buffers) (%i,%i) %s",
                     definition.eDir == OMX_DirOutput ? "output" : "input",
                     (int)definition.nPortIndex, (int)u32param.nU32,
                     (int)definition.nBufferCountActual,
                     (int)definition.nBufferCountMin, (int)definition.nBufferSize,
                     (int)definition.bBuffersContiguous,
                     (int)definition.nBufferAlignment,
                     definition.bEnabled ? "enabled" : "disabled" );

            switch(definition.eDomain)
            {
            case 128:

                if(definition.format.video.eCompressionFormat)
                    GetVlcVideoFormat( definition.format.video.eCompressionFormat,
                                       &i_fourcc, &psz_name );
                else
                    GetVlcChromaFormat( definition.format.video.eColorFormat,
                                        &i_fourcc, &psz_name );

                OMX_INIT_STRUCTURE(crop_rect);
                crop_rect.nPortIndex = definition.nPortIndex;
                omx_error = OMX_GetConfig(omx_handle, OMX_IndexConfigCommonOutputCrop, &crop_rect);
                if (omx_error != OMX_ErrorNone)
                {
                    crop_rect.nLeft = crop_rect.nTop = 0;
                    crop_rect.nWidth = definition.format.video.nFrameWidth;
                    crop_rect.nHeight = definition.format.video.nFrameHeight;
                }

                msg_Dbg( p_dec, "  -> video %s %ix%i@%.2f (%i,%i) (%i,%i) (%i,%i,%i,%i)", psz_name,
                         (int)definition.format.video.nFrameWidth,
                         (int)definition.format.video.nFrameHeight,
                         (float)definition.format.video.xFramerate/(float)(1<<16),
                         (int)definition.format.video.eCompressionFormat,
                         (int)definition.format.video.eColorFormat,
                         (int)definition.format.video.nStride,
                         (int)definition.format.video.nSliceHeight,
                         (int)crop_rect.nLeft, (int)crop_rect.nTop,
                         (int)crop_rect.nWidth, (int)crop_rect.nHeight);
                break;

            case 129:

                OmxToVlcAudioFormat( definition.format.audio.eEncoding,
                                   &i_fourcc, &psz_name );

                GetAudioParameters(omx_handle, &format_param,
                                   definition.nPortIndex,
                                   definition.format.audio.eEncoding,
                                   &i_channels, &i_samplerate, &i_bitrate,
                                   &i_bitspersample, &i_blockalign);

                msg_Dbg( p_dec, "  -> audio %s (%i) %i,%i,%i,%i,%i", psz_name,
                         (int)definition.format.audio.eEncoding,
                         i_channels, i_samplerate, i_bitrate, i_bitspersample,
                         i_blockalign);
                break;

            default: break;
            }
        }
    }
}
