
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct render_context {int hWnd; int d3ddev; int rectangleFVFVertexBuf; scalar_t__ renderTexture; int backBuffer; } ;
struct CUSTOMVERTEX {int dummy; } ;
typedef int IDirect3DBaseTexture9 ;


 int CUSTOMFVF ;
 int D3DCLEAR_TARGET ;
 int D3DCOLOR_XRGB (int,int,int ) ;
 int D3DPT_TRIANGLEFAN ;
 int IDirect3DDevice9_BeginScene (int ) ;
 int IDirect3DDevice9_Clear (int ,int ,int *,int ,int ,float,int ) ;
 int IDirect3DDevice9_DrawPrimitive (int ,int ,int ,int) ;
 int IDirect3DDevice9_EndScene (int ) ;
 int IDirect3DDevice9_Present (int ,int *,int *,int ,int *) ;
 int IDirect3DDevice9_SetFVF (int ,int ) ;
 int IDirect3DDevice9_SetRenderTarget (int ,int ,int ) ;
 int IDirect3DDevice9_SetStreamSource (int ,int ,int ,int ,int) ;
 int IDirect3DDevice9_SetTexture (int ,int ,int *) ;

__attribute__((used)) static void Swap(struct render_context *ctx)
{

    IDirect3DDevice9_SetRenderTarget(ctx->d3ddev, 0, ctx->backBuffer);


    IDirect3DDevice9_Clear(ctx->d3ddev, 0, ((void*)0), D3DCLEAR_TARGET, D3DCOLOR_XRGB(255, 120, 0), 1.0f, 0);

    IDirect3DDevice9_BeginScene(ctx->d3ddev);
    IDirect3DDevice9_SetTexture(ctx->d3ddev, 0, (IDirect3DBaseTexture9*)ctx->renderTexture);

    IDirect3DDevice9_SetStreamSource(ctx->d3ddev, 0, ctx->rectangleFVFVertexBuf, 0, sizeof(struct CUSTOMVERTEX));
    IDirect3DDevice9_SetFVF(ctx->d3ddev, CUSTOMFVF);
    IDirect3DDevice9_DrawPrimitive(ctx->d3ddev, D3DPT_TRIANGLEFAN, 0, 2);
    IDirect3DDevice9_EndScene(ctx->d3ddev);

    IDirect3DDevice9_Present(ctx->d3ddev, ((void*)0), ((void*)0), ctx->hWnd, ((void*)0));
}
