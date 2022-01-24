#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_9__ ;
typedef  struct TYPE_31__   TYPE_8__ ;
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_26__ {TYPE_4__* sys; } ;
typedef  TYPE_3__ vlc_va_t ;
struct TYPE_24__ {int /*<<< orphan*/  build; } ;
struct TYPE_25__ {int /*<<< orphan*/  d3ddevice; TYPE_1__ WDDM; } ;
struct TYPE_27__ {int render; int /*<<< orphan*/  d3ddec; TYPE_2__ d3d_dev; } ;
typedef  TYPE_4__ vlc_va_sys_t ;
struct TYPE_28__ {int /*<<< orphan*/  i_height; int /*<<< orphan*/  i_width; int /*<<< orphan*/  i_chroma; } ;
typedef  TYPE_5__ video_format_t ;
struct TYPE_29__ {int bit_depth; int /*<<< orphan*/  name; int /*<<< orphan*/ * guid; } ;
typedef  TYPE_6__ directx_va_mode_t ;
typedef  int /*<<< orphan*/  decoderDesc ;
struct TYPE_30__ {int formatTexture; } ;
typedef  TYPE_7__ d3d_format_t ;
typedef  scalar_t__ UINT ;
struct TYPE_32__ {int OutputFormat; int /*<<< orphan*/  SampleHeight; int /*<<< orphan*/  SampleWidth; int /*<<< orphan*/  Guid; } ;
struct TYPE_31__ {int /*<<< orphan*/  DeviceId; int /*<<< orphan*/  VendorId; } ;
typedef  int /*<<< orphan*/  IDXGIAdapter ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DXGI_FORMAT ;
typedef  TYPE_8__ DXGI_ADAPTER_DESC ;
typedef  TYPE_9__ D3D11_VIDEO_DECODER_DESC ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3D11_FORMAT_SUPPORT_SHADER_LOAD ; 
 int /*<<< orphan*/  D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_INPUT ; 
 int DXGI_FORMAT_420_OPAQUE ; 
 int DXGI_FORMAT_NV12 ; 
 int DXGI_FORMAT_P010 ; 
 int DXGI_FORMAT_P016 ; 
 int DXGI_FORMAT_UNKNOWN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC5 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_9__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(vlc_va_t *va, const directx_va_mode_t *mode, const video_format_t *fmt)
{
    vlc_va_sys_t *sys = va->sys;
    HRESULT hr;

#ifndef NDEBUG
    BOOL bSupported = false;
    for (int format = 0; format < 188; format++) {
        hr = FUNC6(sys->d3ddec, mode->guid, format, &bSupported);
        if (FUNC10(hr) && bSupported)
            FUNC13(va, "format %s is supported for output", FUNC2(format));
    }
#endif

    IDXGIAdapter *pAdapter = FUNC0(sys->d3d_dev.d3ddevice);
    if (!pAdapter)
        return VLC_EGENERIC;

    DXGI_ADAPTER_DESC adapterDesc;
    hr = FUNC8(pAdapter, &adapterDesc);
    FUNC9(pAdapter);
    if (FUNC3(hr))
        return VLC_EGENERIC;

    if (!FUNC12(va, adapterDesc.VendorId, adapterDesc.DeviceId,
                                  mode->guid, sys->d3d_dev.WDDM.build))
    {
        FUNC15(va, "GPU blacklisted for %s codec", mode->name);
        return VLC_EGENERIC;
    }

    DXGI_FORMAT processorInput[6];
    int idx = 0;
    const d3d_format_t *decoder_format = FUNC5(va, fmt->i_chroma);
    if (decoder_format == NULL)
        decoder_format = FUNC4(va, fmt->i_chroma);
    if (decoder_format != NULL)
        processorInput[idx++] = decoder_format->formatTexture;

    if (mode->bit_depth > 10)
        processorInput[idx++] = DXGI_FORMAT_P016;
    if (mode->bit_depth == 10)
        processorInput[idx++] = DXGI_FORMAT_P010;
    processorInput[idx++] = DXGI_FORMAT_NV12;
    processorInput[idx++] = DXGI_FORMAT_420_OPAQUE;
    processorInput[idx++] = DXGI_FORMAT_UNKNOWN;

    /* */
    for (idx = 0; processorInput[idx] != DXGI_FORMAT_UNKNOWN; ++idx)
    {
        BOOL is_supported = false;
        hr = FUNC6(sys->d3ddec, mode->guid, processorInput[idx], &is_supported);
        if (FUNC10(hr) && is_supported)
            FUNC13(va, "%s output is supported for decoder %s.", FUNC2(processorInput[idx]), mode->name);
        else
        {
            FUNC13(va, "Can't get a decoder output format %s for decoder %s.", FUNC2(processorInput[idx]), mode->name);
            continue;
        }

       // check if we can create render texture of that format
       // check the decoder can output to that format
       if ( !FUNC1(sys->d3d_dev.d3ddevice, processorInput[idx],
                                  D3D11_FORMAT_SUPPORT_SHADER_LOAD) )
       {
#ifndef ID3D11VideoContext_VideoProcessorBlt
           FUNC13(va, "Format %s needs a processor but is not supported",
                   FUNC2(processorInput[idx]));
#else
           if ( !DeviceSupportsFormat(sys->d3d_dev.d3ddevice, processorInput[idx],
                                      D3D11_FORMAT_SUPPORT_VIDEO_PROCESSOR_INPUT) )
           {
               msg_Dbg(va, "Format %s needs a processor but is not available",
                       DxgiFormatToStr(processorInput[idx]));
               continue;
           }
#endif
        }

        D3D11_VIDEO_DECODER_DESC decoderDesc;
        FUNC11(&decoderDesc, sizeof(decoderDesc));
        decoderDesc.Guid = *mode->guid;
        decoderDesc.SampleWidth = fmt->i_width;
        decoderDesc.SampleHeight = fmt->i_height;
        decoderDesc.OutputFormat = processorInput[idx];

        UINT cfg_count = 0;
        hr = FUNC7( sys->d3ddec, &decoderDesc, &cfg_count );
        if (FUNC3(hr))
        {
            FUNC14( va, "Failed to get configuration for decoder %s. (hr=0x%lX)", mode->name, hr );
            continue;
        }
        if (cfg_count == 0) {
            FUNC14( va, "No decoder configuration possible for %s %dx%d",
                     FUNC2(decoderDesc.OutputFormat),
                     decoderDesc.SampleWidth, decoderDesc.SampleHeight );
            continue;
        }

        FUNC13(va, "Using output format %s for decoder %s", FUNC2(processorInput[idx]), mode->name);
        sys->render = processorInput[idx];
        return VLC_SUCCESS;
    }

    FUNC13(va, "Output format from picture source not supported.");
    return VLC_EGENERIC;
}