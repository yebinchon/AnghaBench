#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_5__* sys; } ;
typedef  TYPE_4__ vlc_va_t ;
struct TYPE_19__ {int /*<<< orphan*/  adapterId; } ;
struct TYPE_18__ {int /*<<< orphan*/  obj; } ;
struct TYPE_22__ {scalar_t__ render; int /*<<< orphan*/  d3ddec; TYPE_2__ d3d_dev; TYPE_1__ hd3d; } ;
typedef  TYPE_5__ vlc_va_sys_t ;
typedef  int /*<<< orphan*/  video_format_t ;
struct TYPE_23__ {int /*<<< orphan*/  guid; int /*<<< orphan*/  name; } ;
typedef  TYPE_6__ directx_va_mode_t ;
struct TYPE_24__ {scalar_t__ format; scalar_t__ name; } ;
typedef  TYPE_7__ d3d9_format_t ;
typedef  int UINT ;
struct TYPE_20__ {int LowPart; } ;
struct TYPE_25__ {scalar_t__ VendorId; int /*<<< orphan*/  DeviceId; TYPE_3__ DriverVersion; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ D3DFORMAT ;
typedef  TYPE_8__ D3DADAPTER_IDENTIFIER9 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 TYPE_7__* FUNC1 (scalar_t__ const) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ GPU_MANUFACTURER_INTEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,scalar_t__**) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 TYPE_7__* d3d_formats ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,char*,scalar_t__ const,...) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(vlc_va_t *va, const directx_va_mode_t *mode, const video_format_t *fmt)
{
    FUNC5(fmt);
    vlc_va_sys_t *sys = va->sys;

    D3DADAPTER_IDENTIFIER9 identifier;
    HRESULT hr = FUNC3(sys->hd3d.obj, sys->d3d_dev.adapterId, 0, &identifier);
    if (FUNC2(hr))
        return VLC_EGENERIC;

    UINT driverBuild = identifier.DriverVersion.LowPart & 0xFFFF;
    if (identifier.VendorId == GPU_MANUFACTURER_INTEL && (identifier.DriverVersion.LowPart >> 16) >= 100)
    {
        /* new Intel driver format */
        driverBuild += ((identifier.DriverVersion.LowPart >> 16) - 100) * 1000;
    }
    if (!FUNC6(va, identifier.VendorId, identifier.DeviceId,
                                  mode->guid, driverBuild))
    {
        FUNC9(va, "GPU blacklisted for %s codec", mode->name);
        return VLC_EGENERIC;
    }

    int err = VLC_EGENERIC;
    UINT      output_count = 0;
    D3DFORMAT *output_list = NULL;
    if (FUNC2(FUNC4(sys->d3ddec,
                                                                   mode->guid,
                                                                   &output_count,
                                                                   &output_list))) {
        FUNC8(va, "IDirectXVideoDecoderService_GetDecoderRenderTargets failed");
        return VLC_EGENERIC;
    }

    for (unsigned j = 0; j < output_count; j++) {
        const D3DFORMAT f = output_list[j];
        const d3d9_format_t *format = FUNC1(f);
        if (format) {
            FUNC7(va, "%s is supported for output", format->name);
        } else {
            FUNC7(va, "%d is supported for output (%4.4s)", f, (const char*)&f);
        }
    }

    /* */
    for (unsigned pass = 0; pass < 2 && err != VLC_SUCCESS; ++pass)
    {
        for (unsigned j = 0; d3d_formats[j].name; j++) {
            const d3d9_format_t *format = &d3d_formats[j];

            /* */
            bool is_supported = false;
            for (unsigned k = 0; !is_supported && k < output_count; k++) {
                is_supported = format->format == output_list[k];
            }
            if (!is_supported)
                continue;
            if (pass == 0 && format->format != sys->render)
                continue;

            /* We have our solution */
            FUNC7(va, "Using decoder output '%s'", format->name);
            sys->render = format->format;
            err = VLC_SUCCESS;
            break;
        }
    }
    FUNC0(output_list);
    return err;
}