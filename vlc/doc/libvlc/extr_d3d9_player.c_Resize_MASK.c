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
struct render_context {int /*<<< orphan*/ * sharedRenderSurface; int /*<<< orphan*/ * libvlc_d3d; int /*<<< orphan*/ * sharedRenderTexture; int /*<<< orphan*/ * sharedHandled; int /*<<< orphan*/ * renderTexture; int /*<<< orphan*/ * d3ddev; int /*<<< orphan*/  d3d; } ;
struct TYPE_5__ {int full_range; int /*<<< orphan*/  transfer; int /*<<< orphan*/  primaries; int /*<<< orphan*/  colorspace; int /*<<< orphan*/  surface_format; } ;
typedef  TYPE_1__ libvlc_video_output_cfg_t ;
struct TYPE_6__ {int /*<<< orphan*/  Format; } ;
typedef  int /*<<< orphan*/  IDirect3DDevice9 ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_2__ D3DDISPLAYMODE ;

/* Variables and functions */
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  D3DUSAGE_RENDERTARGET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int,unsigned int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  libvlc_video_colorspace_BT709 ; 
 int /*<<< orphan*/  libvlc_video_primaries_BT709 ; 
 int /*<<< orphan*/  libvlc_video_transfer_func_SRGB ; 

__attribute__((used)) static bool FUNC9(struct render_context *ctx, unsigned width, unsigned height,
                   IDirect3DDevice9 *vlc_device,
                   libvlc_video_output_cfg_t *out)
{
    HRESULT hr;
    D3DDISPLAYMODE d3ddm;

    hr = FUNC1(ctx->d3d, 0, &d3ddm);

    /* create the output surface VLC will write to */
    if (ctx->renderTexture)
    {
        FUNC8(ctx->renderTexture);
        ctx->renderTexture = NULL;
        ctx->sharedHandled = NULL;
    }
    if (ctx->sharedRenderTexture)
    {
        FUNC8(ctx->sharedRenderTexture);
        ctx->sharedRenderTexture = NULL;
    }
    if (ctx->sharedRenderSurface)
    {
        FUNC6(ctx->sharedRenderSurface);
        ctx->sharedRenderSurface = NULL;
    }
    /* the device to use may have changed */
    if (ctx->libvlc_d3d)
    {
        FUNC4(ctx->libvlc_d3d);
    }
    ctx->libvlc_d3d = vlc_device;
    FUNC2(ctx->libvlc_d3d);

    /* texture we can use on our device */
    hr = FUNC3(ctx->d3ddev, width, height, 1, D3DUSAGE_RENDERTARGET,
                                        d3ddm.Format,
                                        D3DPOOL_DEFAULT,
                                        &ctx->renderTexture,
                                        &ctx->sharedHandled);
    if (FUNC0(hr))
        return false;

    /* texture/surface that is set as the render target for libvlc on its device */
    hr = FUNC3(ctx->libvlc_d3d, width, height, 1, D3DUSAGE_RENDERTARGET,
                                        d3ddm.Format,
                                        D3DPOOL_DEFAULT,
                                        &ctx->sharedRenderTexture,
                                        &ctx->sharedHandled);
    if (FUNC0(hr))
        return false;

    hr = FUNC7(ctx->sharedRenderTexture, 0, &ctx->sharedRenderSurface);
    if (FUNC0(hr))
        return false;

    hr = FUNC5(ctx->libvlc_d3d, 0, ctx->sharedRenderSurface);
    if (FUNC0(hr)) return false;

    out->surface_format = d3ddm.Format;
    out->full_range     = true;
    out->colorspace     = libvlc_video_colorspace_BT709;
    out->primaries      = libvlc_video_primaries_BT709;
    out->transfer       = libvlc_video_transfer_func_SRGB;

    return true;
}