
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_context {int d3d; scalar_t__ d3ddev; scalar_t__ libvlc_d3d; scalar_t__ rectangleFVFVertexBuf; scalar_t__ sharedRenderTexture; scalar_t__ sharedRenderSurface; scalar_t__ renderTexture; scalar_t__ backBuffer; } ;


 int IDirect3D9_Release (int ) ;
 int IDirect3DDevice9_Release (scalar_t__) ;
 int IDirect3DSurface9_Release (scalar_t__) ;
 int IDirect3DTexture9_Release (scalar_t__) ;
 int IDirect3DVertexBuffer9_Release (scalar_t__) ;

__attribute__((used)) static void release_direct3d(struct render_context *ctx)
{
    if (ctx->backBuffer)
        IDirect3DSurface9_Release(ctx->backBuffer);
    if (ctx->renderTexture)
        IDirect3DTexture9_Release(ctx->renderTexture);
    if (ctx->sharedRenderSurface)
        IDirect3DSurface9_Release(ctx->sharedRenderSurface);
    if (ctx->sharedRenderTexture)
        IDirect3DTexture9_Release(ctx->sharedRenderTexture);
    if (ctx->rectangleFVFVertexBuf)
        IDirect3DVertexBuffer9_Release(ctx->rectangleFVFVertexBuf);
    if (ctx->libvlc_d3d)
        IDirect3DDevice9_Release(ctx->libvlc_d3d);
    IDirect3DDevice9_Release(ctx->d3ddev);
    IDirect3D9_Release(ctx->d3d);
}
