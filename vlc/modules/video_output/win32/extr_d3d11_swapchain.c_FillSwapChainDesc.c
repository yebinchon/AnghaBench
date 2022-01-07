
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct d3d11_local_swapchain {TYPE_2__* pixelFormat; } ;
typedef void* UINT ;
struct TYPE_6__ {int Count; scalar_t__ Quality; } ;
struct TYPE_8__ {int BufferCount; int SwapEffect; int Format; void* Height; void* Width; TYPE_1__ SampleDesc; int BufferUsage; } ;
struct TYPE_7__ {int formatTexture; } ;
typedef int * HMODULE ;
typedef TYPE_3__ DXGI_SWAP_CHAIN_DESC1 ;


 int DXGI_SWAP_EFFECT_DISCARD ;
 int DXGI_SWAP_EFFECT_FLIP_DISCARD ;
 int DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL ;
 int DXGI_USAGE_RENDER_TARGET_OUTPUT ;
 int * GetModuleHandle (int ) ;
 int * GetProcAddress (int *,char*) ;
 int TEXT (char*) ;
 int ZeroMemory (TYPE_3__*,int) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static void FillSwapChainDesc(struct d3d11_local_swapchain *display, UINT width, UINT height, DXGI_SWAP_CHAIN_DESC1 *out)
{
    ZeroMemory(out, sizeof(*out));
    out->BufferCount = 3;
    out->BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT;
    out->SampleDesc.Count = 1;
    out->SampleDesc.Quality = 0;
    out->Width = width;
    out->Height = height;
    out->Format = display->pixelFormat->formatTexture;


    bool isWin10OrGreater = 0;
    HMODULE hKernel32 = GetModuleHandle(TEXT("kernel32.dll"));
    if (likely(hKernel32 != ((void*)0)))
        isWin10OrGreater = GetProcAddress(hKernel32, "GetSystemCpuSetInformation") != ((void*)0);
    if (isWin10OrGreater)
        out->SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD;
    else
    {
        bool isWin80OrGreater = 0;
        if (likely(hKernel32 != ((void*)0)))
            isWin80OrGreater = GetProcAddress(hKernel32, "CheckTokenCapability") != ((void*)0);
        if (isWin80OrGreater)
            out->SwapEffect = DXGI_SWAP_EFFECT_FLIP_SEQUENTIAL;
        else
        {
            out->SwapEffect = DXGI_SWAP_EFFECT_DISCARD;
            out->BufferCount = 1;
        }
    }
}
