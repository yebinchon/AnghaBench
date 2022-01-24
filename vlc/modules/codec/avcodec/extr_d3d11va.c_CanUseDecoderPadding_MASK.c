#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  d3ddevice; } ;
struct TYPE_7__ {TYPE_1__ d3d_dev; } ;
typedef  TYPE_2__ vlc_va_sys_t ;
struct TYPE_8__ {scalar_t__ VendorId; } ;
typedef  int /*<<< orphan*/  IDXGIAdapter ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_3__ DXGI_ADAPTER_DESC ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ GPU_MANUFACTURER_QUALCOMM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC4(vlc_va_sys_t *sys)
{
    IDXGIAdapter *pAdapter = FUNC0(sys->d3d_dev.d3ddevice);
    if (!pAdapter)
        return false;

    DXGI_ADAPTER_DESC adapterDesc;
    HRESULT hr = FUNC2(pAdapter, &adapterDesc);
    FUNC3(pAdapter);
    if (FUNC1(hr))
        return false;

    /* Qualcomm hardware has issues with textures and pixels that should not be
    * part of the decoded area */
    return adapterDesc.VendorId != GPU_MANUFACTURER_QUALCOMM;
}