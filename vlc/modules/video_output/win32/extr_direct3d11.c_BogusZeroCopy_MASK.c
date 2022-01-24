#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* sys; } ;
typedef  TYPE_2__ vout_display_t ;
struct wddm_version {int revision; } ;
struct TYPE_10__ {int /*<<< orphan*/  d3ddevice; } ;
struct TYPE_9__ {scalar_t__ VendorId; int DeviceId; } ;
struct TYPE_7__ {TYPE_5__ d3d_dev; } ;
typedef  int /*<<< orphan*/  IDXGIAdapter ;
typedef  TYPE_3__ DXGI_ADAPTER_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__,struct wddm_version*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ GPU_MANUFACTURER_AMD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  VLC_SUCCESS ; 

__attribute__((used)) static bool FUNC5(vout_display_t *vd)
{
    IDXGIAdapter *p_adapter = FUNC1(vd->sys->d3d_dev.d3ddevice);
    if (!p_adapter)
        return false;

    DXGI_ADAPTER_DESC adapterDesc;
    if (FUNC2(FUNC3(p_adapter, &adapterDesc)))
        return false;
    FUNC4(p_adapter);

    if (adapterDesc.VendorId != GPU_MANUFACTURER_AMD)
        return false;

    switch (adapterDesc.DeviceId)
    {
    case 0x687F: // RX Vega 56/64
    case 0x6863: // RX Vega Frontier Edition
    case 0x15DD: // RX Vega 8/11 (Ryzen iGPU)
    {
        struct wddm_version WDDM = {
            .revision     = 14011, // 18.10.2 - 2018/06/11
        };
        return FUNC0(&vd->sys->d3d_dev, GPU_MANUFACTURER_AMD, &WDDM) != VLC_SUCCESS;
    }
    default:
        return false;
    }
}