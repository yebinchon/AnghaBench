#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ d3ddevice; } ;
struct d3d11_local_swapchain {int /*<<< orphan*/  obj; int /*<<< orphan*/  dxgiswapChain; int /*<<< orphan*/ * swapchainHwnd; TYPE_1__ d3d_dev; } ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_6__ {scalar_t__ Format; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDXGIFactory2 ;
typedef  int /*<<< orphan*/  IDXGIAdapter ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_2__ DXGI_SWAP_CHAIN_DESC1 ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (scalar_t__) ; 
 scalar_t__ DXGI_ERROR_INVALID_CALL ; 
 scalar_t__ DXGI_FORMAT_R10G10B10A2_UNORM ; 
 scalar_t__ DXGI_FORMAT_R8G8B8A8_UNORM ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct d3d11_local_swapchain*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDXGIFactory2 ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct d3d11_local_swapchain *display, UINT width, UINT height)
{
    if (display->swapchainHwnd == NULL)
    {
        FUNC7(display->obj, "missing a HWND to create the swapchain");
        return;
    }

    DXGI_SWAP_CHAIN_DESC1 scd;
    FUNC2(display, width, height, &scd);

    IDXGIAdapter *dxgiadapter = FUNC0(display->d3d_dev.d3ddevice);
    if (FUNC9(dxgiadapter==NULL)) {
        FUNC7(display->obj, "Could not get the DXGI Adapter");
        return;
    }

    IDXGIFactory2 *dxgifactory;
    HRESULT hr = FUNC3(dxgiadapter, &IID_IDXGIFactory2, (void **)&dxgifactory);
    FUNC4(dxgiadapter);
    if (FUNC1(hr)) {
        FUNC7(display->obj, "Could not get the DXGI Factory. (hr=0x%lX)", hr);
        return;
    }

    hr = FUNC5(dxgifactory, (IUnknown *)display->d3d_dev.d3ddevice,
                                              display->swapchainHwnd, &scd,
                                              NULL, NULL, &display->dxgiswapChain);
    if (hr == DXGI_ERROR_INVALID_CALL && scd.Format == DXGI_FORMAT_R10G10B10A2_UNORM)
    {
        FUNC8(display->obj, "10 bits swapchain failed, try 8 bits");
        scd.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
        hr = FUNC5(dxgifactory, (IUnknown *)display->d3d_dev.d3ddevice,
                                                  display->swapchainHwnd, &scd,
                                                  NULL, NULL, &display->dxgiswapChain);
    }
    FUNC6(dxgifactory);
    if (FUNC1(hr)) {
        FUNC7(display->obj, "Could not create the SwapChain. (hr=0x%lX)", hr);
    }
}