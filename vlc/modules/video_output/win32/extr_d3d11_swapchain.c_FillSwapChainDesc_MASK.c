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
struct d3d11_local_swapchain {TYPE_2__* pixelFormat; } ;
typedef  void* UINT ;
struct TYPE_6__ {int Count; scalar_t__ Quality; } ;
struct TYPE_8__ {int BufferCount; int /*<<< orphan*/  SwapEffect; int /*<<< orphan*/  Format; void* Height; void* Width; TYPE_1__ SampleDesc; int /*<<< orphan*/  BufferUsage; } ;
struct TYPE_7__ {int /*<<< orphan*/  formatTexture; } ;
typedef  int /*<<< orphan*/ * HMODULE ;
typedef  TYPE_3__ DXGI_SWAP_CHAIN_DESC1 ;

/* Variables and functions */
 int /*<<< orphan*/  DXGI_SWAP_EFFECT_DISCARD ; 
 int /*<<< orphan*/  DXGI_SWAP_EFFECT_FLIP_DISCARD ; 
 int /*<<< orphan*/  DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL ; 
 int /*<<< orphan*/  DXGI_USAGE_RENDER_TARGET_OUTPUT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct d3d11_local_swapchain *display, UINT width, UINT height, DXGI_SWAP_CHAIN_DESC1 *out)
{
    FUNC3(out, sizeof(*out));
    out->BufferCount = 3;
    out->BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
    out->SampleDesc.Count = 1;
    out->SampleDesc.Quality = 0;
    out->Width = width;
    out->Height = height;
    out->Format = display->pixelFormat->formatTexture;
    //out->Flags = 512; // DXGI_SWAP_CHAIN_FLAG_YUV_VIDEO;

    bool isWin10OrGreater = false;
    HMODULE hKernel32 = FUNC0(FUNC2("kernel32.dll"));
    if (FUNC4(hKernel32 != NULL))
        isWin10OrGreater = FUNC1(hKernel32, "GetSystemCpuSetInformation") != NULL;
    if (isWin10OrGreater)
        out->SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD;
    else
    {
        bool isWin80OrGreater = false;
        if (FUNC4(hKernel32 != NULL))
            isWin80OrGreater = FUNC1(hKernel32, "CheckTokenCapability") != NULL;
        if (isWin80OrGreater)
            out->SwapEffect = DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL;
        else
        {
            out->SwapEffect = DXGI_SWAP_EFFECT_DISCARD;
            out->BufferCount = 1;
        }
    }
}