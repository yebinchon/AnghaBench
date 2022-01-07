
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {TYPE_5__* sys; } ;
typedef TYPE_4__ vlc_va_t ;
struct TYPE_19__ {int adapterId; } ;
struct TYPE_18__ {int obj; } ;
struct TYPE_22__ {scalar_t__ render; int d3ddec; TYPE_2__ d3d_dev; TYPE_1__ hd3d; } ;
typedef TYPE_5__ vlc_va_sys_t ;
typedef int video_format_t ;
struct TYPE_23__ {int guid; int name; } ;
typedef TYPE_6__ directx_va_mode_t ;
struct TYPE_24__ {scalar_t__ format; scalar_t__ name; } ;
typedef TYPE_7__ d3d9_format_t ;
typedef int UINT ;
struct TYPE_20__ {int LowPart; } ;
struct TYPE_25__ {scalar_t__ VendorId; int DeviceId; TYPE_3__ DriverVersion; } ;
typedef int HRESULT ;
typedef scalar_t__ D3DFORMAT ;
typedef TYPE_8__ D3DADAPTER_IDENTIFIER9 ;


 int CoTaskMemFree (scalar_t__*) ;
 TYPE_7__* D3dFindFormat (scalar_t__ const) ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ GPU_MANUFACTURER_INTEL ;
 int IDirect3D9_GetAdapterIdentifier (int ,int ,int ,TYPE_8__*) ;
 int IDirectXVideoDecoderService_GetDecoderRenderTargets (int ,int ,int*,scalar_t__**) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int const*) ;
 TYPE_7__* d3d_formats ;
 int directx_va_canUseDecoder (TYPE_4__*,scalar_t__,int ,int ,int) ;
 int msg_Dbg (TYPE_4__*,char*,scalar_t__ const,...) ;
 int msg_Err (TYPE_4__*,char*) ;
 int msg_Warn (TYPE_4__*,char*,int ) ;

__attribute__((used)) static int DxSetupOutput(vlc_va_t *va, const directx_va_mode_t *mode, const video_format_t *fmt)
{
    VLC_UNUSED(fmt);
    vlc_va_sys_t *sys = va->sys;

    D3DADAPTER_IDENTIFIER9 identifier;
    HRESULT hr = IDirect3D9_GetAdapterIdentifier(sys->hd3d.obj, sys->d3d_dev.adapterId, 0, &identifier);
    if (FAILED(hr))
        return VLC_EGENERIC;

    UINT driverBuild = identifier.DriverVersion.LowPart & 0xFFFF;
    if (identifier.VendorId == GPU_MANUFACTURER_INTEL && (identifier.DriverVersion.LowPart >> 16) >= 100)
    {

        driverBuild += ((identifier.DriverVersion.LowPart >> 16) - 100) * 1000;
    }
    if (!directx_va_canUseDecoder(va, identifier.VendorId, identifier.DeviceId,
                                  mode->guid, driverBuild))
    {
        msg_Warn(va, "GPU blacklisted for %s codec", mode->name);
        return VLC_EGENERIC;
    }

    int err = VLC_EGENERIC;
    UINT output_count = 0;
    D3DFORMAT *output_list = ((void*)0);
    if (FAILED(IDirectXVideoDecoderService_GetDecoderRenderTargets(sys->d3ddec,
                                                                   mode->guid,
                                                                   &output_count,
                                                                   &output_list))) {
        msg_Err(va, "IDirectXVideoDecoderService_GetDecoderRenderTargets failed");
        return VLC_EGENERIC;
    }

    for (unsigned j = 0; j < output_count; j++) {
        const D3DFORMAT f = output_list[j];
        const d3d9_format_t *format = D3dFindFormat(f);
        if (format) {
            msg_Dbg(va, "%s is supported for output", format->name);
        } else {
            msg_Dbg(va, "%d is supported for output (%4.4s)", f, (const char*)&f);
        }
    }


    for (unsigned pass = 0; pass < 2 && err != VLC_SUCCESS; ++pass)
    {
        for (unsigned j = 0; d3d_formats[j].name; j++) {
            const d3d9_format_t *format = &d3d_formats[j];


            bool is_supported = 0;
            for (unsigned k = 0; !is_supported && k < output_count; k++) {
                is_supported = format->format == output_list[k];
            }
            if (!is_supported)
                continue;
            if (pass == 0 && format->format != sys->render)
                continue;


            msg_Dbg(va, "Using decoder output '%s'", format->name);
            sys->render = format->format;
            err = VLC_SUCCESS;
            break;
        }
    }
    CoTaskMemFree(output_list);
    return err;
}
