
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct render_context {int * sharedRenderSurface; int * libvlc_d3d; int * sharedRenderTexture; int * sharedHandled; int * renderTexture; int * d3ddev; int d3d; } ;
struct TYPE_5__ {int full_range; int transfer; int primaries; int colorspace; int surface_format; } ;
typedef TYPE_1__ libvlc_video_output_cfg_t ;
struct TYPE_6__ {int Format; } ;
typedef int IDirect3DDevice9 ;
typedef int HRESULT ;
typedef TYPE_2__ D3DDISPLAYMODE ;


 int D3DPOOL_DEFAULT ;
 int D3DUSAGE_RENDERTARGET ;
 scalar_t__ FAILED (int ) ;
 int IDirect3D9Ex_GetAdapterDisplayMode (int ,int ,TYPE_2__*) ;
 int IDirect3DDevice9_AddRef (int *) ;
 int IDirect3DDevice9_CreateTexture (int *,unsigned int,unsigned int,int,int ,int ,int ,int **,int **) ;
 int IDirect3DDevice9_Release (int *) ;
 int IDirect3DDevice9_SetRenderTarget (int *,int ,int *) ;
 int IDirect3DSurface9_Release (int *) ;
 int IDirect3DTexture9_GetSurfaceLevel (int *,int ,int **) ;
 int IDirect3DTexture9_Release (int *) ;
 int libvlc_video_colorspace_BT709 ;
 int libvlc_video_primaries_BT709 ;
 int libvlc_video_transfer_func_SRGB ;

__attribute__((used)) static bool Resize(struct render_context *ctx, unsigned width, unsigned height,
                   IDirect3DDevice9 *vlc_device,
                   libvlc_video_output_cfg_t *out)
{
    HRESULT hr;
    D3DDISPLAYMODE d3ddm;

    hr = IDirect3D9Ex_GetAdapterDisplayMode(ctx->d3d, 0, &d3ddm);


    if (ctx->renderTexture)
    {
        IDirect3DTexture9_Release(ctx->renderTexture);
        ctx->renderTexture = ((void*)0);
        ctx->sharedHandled = ((void*)0);
    }
    if (ctx->sharedRenderTexture)
    {
        IDirect3DTexture9_Release(ctx->sharedRenderTexture);
        ctx->sharedRenderTexture = ((void*)0);
    }
    if (ctx->sharedRenderSurface)
    {
        IDirect3DSurface9_Release(ctx->sharedRenderSurface);
        ctx->sharedRenderSurface = ((void*)0);
    }

    if (ctx->libvlc_d3d)
    {
        IDirect3DDevice9_Release(ctx->libvlc_d3d);
    }
    ctx->libvlc_d3d = vlc_device;
    IDirect3DDevice9_AddRef(ctx->libvlc_d3d);


    hr = IDirect3DDevice9_CreateTexture(ctx->d3ddev, width, height, 1, D3DUSAGE_RENDERTARGET,
                                        d3ddm.Format,
                                        D3DPOOL_DEFAULT,
                                        &ctx->renderTexture,
                                        &ctx->sharedHandled);
    if (FAILED(hr))
        return 0;


    hr = IDirect3DDevice9_CreateTexture(ctx->libvlc_d3d, width, height, 1, D3DUSAGE_RENDERTARGET,
                                        d3ddm.Format,
                                        D3DPOOL_DEFAULT,
                                        &ctx->sharedRenderTexture,
                                        &ctx->sharedHandled);
    if (FAILED(hr))
        return 0;

    hr = IDirect3DTexture9_GetSurfaceLevel(ctx->sharedRenderTexture, 0, &ctx->sharedRenderSurface);
    if (FAILED(hr))
        return 0;

    hr = IDirect3DDevice9_SetRenderTarget(ctx->libvlc_d3d, 0, ctx->sharedRenderSurface);
    if (FAILED(hr)) return 0;

    out->surface_format = d3ddm.Format;
    out->full_range = 1;
    out->colorspace = libvlc_video_colorspace_BT709;
    out->primaries = libvlc_video_primaries_BT709;
    out->transfer = libvlc_video_transfer_func_SRGB;

    return 1;
}
