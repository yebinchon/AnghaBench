
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_8__ ;
typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_26__ {TYPE_4__* sys; } ;
typedef TYPE_3__ vlc_va_t ;
struct TYPE_24__ {int build; } ;
struct TYPE_25__ {int d3ddevice; TYPE_1__ WDDM; } ;
struct TYPE_27__ {int render; int d3ddec; TYPE_2__ d3d_dev; } ;
typedef TYPE_4__ vlc_va_sys_t ;
struct TYPE_28__ {int i_height; int i_width; int i_chroma; } ;
typedef TYPE_5__ video_format_t ;
struct TYPE_29__ {int bit_depth; int name; int * guid; } ;
typedef TYPE_6__ directx_va_mode_t ;
typedef int decoderDesc ;
struct TYPE_30__ {int formatTexture; } ;
typedef TYPE_7__ d3d_format_t ;
typedef scalar_t__ UINT ;
struct TYPE_32__ {int OutputFormat; int SampleHeight; int SampleWidth; int Guid; } ;
struct TYPE_31__ {int DeviceId; int VendorId; } ;
typedef int IDXGIAdapter ;
typedef int HRESULT ;
typedef int DXGI_FORMAT ;
typedef TYPE_8__ DXGI_ADAPTER_DESC ;
typedef TYPE_9__ D3D11_VIDEO_DECODER_DESC ;
typedef int BOOL ;


 int * D3D11DeviceAdapter (int ) ;
 int D3D11_FORMAT_SUPPORT_SHADER_LOAD ;
 int D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_INPUT ;
 int DXGI_FORMAT_420_OPAQUE ;
 int DXGI_FORMAT_NV12 ;
 int DXGI_FORMAT_P010 ;
 int DXGI_FORMAT_P016 ;
 int DXGI_FORMAT_UNKNOWN ;
 int DeviceSupportsFormat (int ,int,int ) ;
 int DxgiFormatToStr (int) ;
 scalar_t__ FAILED (int ) ;
 TYPE_7__* GetDirectDecoderFormat (TYPE_3__*,int ) ;
 TYPE_7__* GetDirectRenderingFormat (TYPE_3__*,int ) ;
 int ID3D11VideoDevice_CheckVideoDecoderFormat (int ,int *,int,int*) ;
 int ID3D11VideoDevice_GetVideoDecoderConfigCount (int ,TYPE_9__*,scalar_t__*) ;
 int IDXGIAdapter_GetDesc (int *,TYPE_8__*) ;
 int IDXGIAdapter_Release (int *) ;
 scalar_t__ SUCCEEDED (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int ZeroMemory (TYPE_9__*,int) ;
 int directx_va_canUseDecoder (TYPE_3__*,int ,int ,int *,int ) ;
 int msg_Dbg (TYPE_3__*,char*,...) ;
 int msg_Err (TYPE_3__*,char*,int ,int ,...) ;
 int msg_Warn (TYPE_3__*,char*,int ) ;

__attribute__((used)) static int DxSetupOutput(vlc_va_t *va, const directx_va_mode_t *mode, const video_format_t *fmt)
{
    vlc_va_sys_t *sys = va->sys;
    HRESULT hr;


    BOOL bSupported = 0;
    for (int format = 0; format < 188; format++) {
        hr = ID3D11VideoDevice_CheckVideoDecoderFormat(sys->d3ddec, mode->guid, format, &bSupported);
        if (SUCCEEDED(hr) && bSupported)
            msg_Dbg(va, "format %s is supported for output", DxgiFormatToStr(format));
    }


    IDXGIAdapter *pAdapter = D3D11DeviceAdapter(sys->d3d_dev.d3ddevice);
    if (!pAdapter)
        return VLC_EGENERIC;

    DXGI_ADAPTER_DESC adapterDesc;
    hr = IDXGIAdapter_GetDesc(pAdapter, &adapterDesc);
    IDXGIAdapter_Release(pAdapter);
    if (FAILED(hr))
        return VLC_EGENERIC;

    if (!directx_va_canUseDecoder(va, adapterDesc.VendorId, adapterDesc.DeviceId,
                                  mode->guid, sys->d3d_dev.WDDM.build))
    {
        msg_Warn(va, "GPU blacklisted for %s codec", mode->name);
        return VLC_EGENERIC;
    }

    DXGI_FORMAT processorInput[6];
    int idx = 0;
    const d3d_format_t *decoder_format = GetDirectRenderingFormat(va, fmt->i_chroma);
    if (decoder_format == ((void*)0))
        decoder_format = GetDirectDecoderFormat(va, fmt->i_chroma);
    if (decoder_format != ((void*)0))
        processorInput[idx++] = decoder_format->formatTexture;

    if (mode->bit_depth > 10)
        processorInput[idx++] = DXGI_FORMAT_P016;
    if (mode->bit_depth == 10)
        processorInput[idx++] = DXGI_FORMAT_P010;
    processorInput[idx++] = DXGI_FORMAT_NV12;
    processorInput[idx++] = DXGI_FORMAT_420_OPAQUE;
    processorInput[idx++] = DXGI_FORMAT_UNKNOWN;


    for (idx = 0; processorInput[idx] != DXGI_FORMAT_UNKNOWN; ++idx)
    {
        BOOL is_supported = 0;
        hr = ID3D11VideoDevice_CheckVideoDecoderFormat(sys->d3ddec, mode->guid, processorInput[idx], &is_supported);
        if (SUCCEEDED(hr) && is_supported)
            msg_Dbg(va, "%s output is supported for decoder %s.", DxgiFormatToStr(processorInput[idx]), mode->name);
        else
        {
            msg_Dbg(va, "Can't get a decoder output format %s for decoder %s.", DxgiFormatToStr(processorInput[idx]), mode->name);
            continue;
        }



       if ( !DeviceSupportsFormat(sys->d3d_dev.d3ddevice, processorInput[idx],
                                  D3D11_FORMAT_SUPPORT_SHADER_LOAD) )
       {

           msg_Dbg(va, "Format %s needs a processor but is not supported",
                   DxgiFormatToStr(processorInput[idx]));
        }

        D3D11_VIDEO_DECODER_DESC decoderDesc;
        ZeroMemory(&decoderDesc, sizeof(decoderDesc));
        decoderDesc.Guid = *mode->guid;
        decoderDesc.SampleWidth = fmt->i_width;
        decoderDesc.SampleHeight = fmt->i_height;
        decoderDesc.OutputFormat = processorInput[idx];

        UINT cfg_count = 0;
        hr = ID3D11VideoDevice_GetVideoDecoderConfigCount( sys->d3ddec, &decoderDesc, &cfg_count );
        if (FAILED(hr))
        {
            msg_Err( va, "Failed to get configuration for decoder %s. (hr=0x%lX)", mode->name, hr );
            continue;
        }
        if (cfg_count == 0) {
            msg_Err( va, "No decoder configuration possible for %s %dx%d",
                     DxgiFormatToStr(decoderDesc.OutputFormat),
                     decoderDesc.SampleWidth, decoderDesc.SampleHeight );
            continue;
        }

        msg_Dbg(va, "Using output format %s for decoder %s", DxgiFormatToStr(processorInput[idx]), mode->name);
        sys->render = processorInput[idx];
        return VLC_SUCCESS;
    }

    msg_Dbg(va, "Output format from picture source not supported.");
    return VLC_EGENERIC;
}
