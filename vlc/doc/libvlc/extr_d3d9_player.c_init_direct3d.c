
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct render_context {int rectangleFVFVertexBuf; int d3ddev; int backBuffer; int d3d; void* hWnd; } ;
struct CUSTOMVERTEX {float member_2; float member_3; float member_5; float member_6; int member_4; int member_1; int member_0; } ;
typedef int rectangleVertices ;
struct TYPE_3__ {void* hDeviceWindow; int SwapEffect; int Windowed; int member_0; } ;
typedef int LPVOID ;
typedef void* HWND ;
typedef int HRESULT ;
typedef TYPE_1__ D3DPRESENT_PARAMETERS ;


 int BORDER_BOTTOM ;
 int BORDER_LEFT ;
 int BORDER_RIGHT ;
 int BORDER_TOP ;
 int CUSTOMFVF ;
 int D3DADAPTER_DEFAULT ;
 int D3DCOLOR_ARGB (int,int,int,int) ;
 int D3DCREATE_HARDWARE_VERTEXPROCESSING ;
 int D3DCREATE_MULTITHREADED ;
 int D3DCREATE_PUREDEVICE ;
 int D3DDEVTYPE_HAL ;
 int D3DPOOL_DEFAULT ;
 int D3DSWAPEFFECT_DISCARD ;
 int D3DUSAGE_DYNAMIC ;
 int D3DUSAGE_WRITEONLY ;
 int D3D_SDK_VERSION ;
 int Direct3DCreate9Ex (int ,int *) ;
 int IDirect3D9Ex_CreateDevice (int ,int ,int ,int *,int,TYPE_1__*,int *) ;
 int IDirect3DDevice9Ex_CreateVertexBuffer (int ,int,int,int ,int ,int *,int *) ;
 int IDirect3DDevice9_GetRenderTarget (int ,int ,int *) ;
 int IDirect3DVertexBuffer9_Lock (int ,int ,int ,void**,int ) ;
 int IDirect3DVertexBuffer9_Unlock (int ) ;
 int TRUE ;
 int memcpy (int ,struct CUSTOMVERTEX*,int) ;

__attribute__((used)) static void init_direct3d(struct render_context *ctx, HWND hWnd)
{
    ctx->hWnd = hWnd;
    HRESULT hr = Direct3DCreate9Ex(D3D_SDK_VERSION, &ctx->d3d);

    D3DPRESENT_PARAMETERS d3dpp = { 0 };
    d3dpp.Windowed = TRUE;
    d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD;
    d3dpp.hDeviceWindow = hWnd;

    IDirect3D9Ex_CreateDevice(ctx->d3d, D3DADAPTER_DEFAULT,
                            D3DDEVTYPE_HAL,
                            ((void*)0),
                            D3DCREATE_MULTITHREADED| D3DCREATE_HARDWARE_VERTEXPROCESSING | D3DCREATE_PUREDEVICE,
                            &d3dpp,
                            &ctx->d3ddev);

    IDirect3DDevice9_GetRenderTarget(ctx->d3ddev, 0, &ctx->backBuffer);

    struct CUSTOMVERTEX rectangleVertices[] =
    {
        { BORDER_LEFT, BORDER_TOP, 0.0f, 1.0f, D3DCOLOR_ARGB(255, 255, 255, 255), 0.0f, 0.0f },
        { BORDER_RIGHT, BORDER_TOP, 0.0f, 1.0f, D3DCOLOR_ARGB(255, 255, 255, 255), 1.0f, 0.0f },
        { BORDER_RIGHT, BORDER_BOTTOM, 0.0f, 1.0f, D3DCOLOR_ARGB(255, 255, 255, 255), 1.0f, 1.0f },
        { BORDER_LEFT, BORDER_BOTTOM, 0.0f, 1.0f, D3DCOLOR_ARGB(255, 255, 255, 255), 0.0f, 1.0f },
    };
    IDirect3DDevice9Ex_CreateVertexBuffer(ctx->d3ddev, sizeof(rectangleVertices),
                                        D3DUSAGE_DYNAMIC|D3DUSAGE_WRITEONLY,
                                        CUSTOMFVF,
                                        D3DPOOL_DEFAULT,
                                        &ctx->rectangleFVFVertexBuf,
                                        ((void*)0));

    LPVOID pVoid;
    IDirect3DVertexBuffer9_Lock(ctx->rectangleFVFVertexBuf, 0, 0, (void**)&pVoid, 0);
    memcpy(pVoid, rectangleVertices, sizeof(rectangleVertices));
    IDirect3DVertexBuffer9_Unlock(ctx->rectangleFVFVertexBuf);
}
