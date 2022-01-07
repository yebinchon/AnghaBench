
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ video_transfer_func_t ;
typedef scalar_t__ video_color_space_t ;
typedef scalar_t__ video_color_primaries_t ;
struct d3d11_local_swapchain {int logged_capabilities; TYPE_2__* colorspace; int obj; int dxgiswapChain; int dxgiswapChain4; } ;
struct TYPE_9__ {scalar_t__ transfer; scalar_t__ full_range; scalar_t__ colorspace; scalar_t__ primaries; } ;
typedef TYPE_1__ libvlc_video_direct3d_cfg_t ;
struct TYPE_10__ {char* name; scalar_t__ dxgi; scalar_t__ primaries; scalar_t__ color; scalar_t__ transfer; scalar_t__ b_full_range; } ;
typedef TYPE_2__ dxgi_color_space ;
typedef int UINT ;
struct TYPE_11__ {scalar_t__ ColorSpace; int BitsPerColor; int MaxFullFrameLuminance; } ;
typedef int IDXGISwapChain3 ;
typedef int IDXGIOutput6 ;
typedef int IDXGIOutput ;
typedef int HRESULT ;
typedef TYPE_3__ DXGI_OUTPUT_DESC1 ;


 scalar_t__ FAILED (int ) ;
 int IDXGIOutput6_GetDesc1 (int *,TYPE_3__*) ;
 int IDXGIOutput6_Release (int *) ;
 int IDXGIOutput_QueryInterface (int *,int *,void**) ;
 int IDXGIOutput_Release (int *) ;
 int IDXGISwapChain3_CheckColorSpaceSupport (int *,scalar_t__,int *) ;
 int IDXGISwapChain3_Release (int *) ;
 int IDXGISwapChain3_SetColorSpace1 (int *,scalar_t__) ;
 int IDXGISwapChain_GetContainingOutput (int ,int **) ;
 int IDXGISwapChain_QueryInterface (int ,int *,void**) ;
 int IID_IDXGIOutput6 ;
 int IID_IDXGISwapChain3 ;
 int IID_IDXGISwapChain4 ;
 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ TRANSFER_FUNC_HLG ;
 scalar_t__ TRANSFER_FUNC_SMPTE_ST2084 ;
 int canHandleConversion (TYPE_2__*,TYPE_2__*) ;
 TYPE_2__* color_spaces ;
 int msg_Dbg (int ,char*,char*,...) ;
 int msg_Err (int ,char*,char*,int ) ;
 int msg_Warn (int ,char*,...) ;

__attribute__((used)) static void SelectSwapchainColorspace(struct d3d11_local_swapchain *display, const libvlc_video_direct3d_cfg_t *cfg)
{
    HRESULT hr;
    int best = 0;
    int score, best_score = 0;
    UINT support;
    IDXGISwapChain3 *dxgiswapChain3 = ((void*)0);
    hr = IDXGISwapChain_QueryInterface( display->dxgiswapChain, &IID_IDXGISwapChain3, (void **)&dxgiswapChain3);
    if (FAILED(hr)) {
        msg_Warn(display->obj, "could not get a IDXGISwapChain3");
        goto done;
    }



    best = -1;
    for (int i=0; color_spaces[i].name; ++i)
    {
        hr = IDXGISwapChain3_CheckColorSpaceSupport(dxgiswapChain3, color_spaces[i].dxgi, &support);
        if (SUCCEEDED(hr) && support) {
            if (!display->logged_capabilities)
                msg_Dbg(display->obj, "supports colorspace %s", color_spaces[i].name);
            score = 0;
            if (color_spaces[i].primaries == (video_color_primaries_t) cfg->primaries)
                score++;
            if (color_spaces[i].color == (video_color_space_t) cfg->colorspace)
                score += 2;
            if (color_spaces[i].transfer == (video_transfer_func_t) cfg->transfer ||

                (color_spaces[i].transfer == TRANSFER_FUNC_SMPTE_ST2084 && cfg->transfer == TRANSFER_FUNC_HLG))
                score++;
            if (color_spaces[i].b_full_range == cfg->full_range)
                score++;
            if (score > best_score || (score && best == -1)) {
                best = i;
                best_score = score;
            }
        }
    }
    display->logged_capabilities = 1;

    if (best == -1)
    {
        best = 0;
        msg_Warn(display->obj, "no matching colorspace found force %s", color_spaces[best].name);
    }

    IDXGISwapChain_QueryInterface( display->dxgiswapChain, &IID_IDXGISwapChain4, (void **)&display->dxgiswapChain4);
    hr = IDXGISwapChain3_SetColorSpace1(dxgiswapChain3, color_spaces[best].dxgi);
    if (SUCCEEDED(hr))
        msg_Dbg(display->obj, "using colorspace %s", color_spaces[best].name);
    else
        msg_Err(display->obj, "Failed to set colorspace %s. (hr=0x%lX)", color_spaces[best].name, hr);
done:
    display->colorspace = &color_spaces[best];
    if (dxgiswapChain3)
        IDXGISwapChain3_Release(dxgiswapChain3);
}
