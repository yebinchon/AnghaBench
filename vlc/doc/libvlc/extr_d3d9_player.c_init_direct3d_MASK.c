#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct render_context {int /*<<< orphan*/  rectangleFVFVertexBuf; int /*<<< orphan*/  d3ddev; int /*<<< orphan*/  backBuffer; int /*<<< orphan*/  d3d; void* hWnd; } ;
struct CUSTOMVERTEX {float member_2; float member_3; float member_5; float member_6; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  rectangleVertices ;
struct TYPE_3__ {void* hDeviceWindow; int /*<<< orphan*/  SwapEffect; int /*<<< orphan*/  Windowed; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  void* HWND ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ D3DPRESENT_PARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  BORDER_BOTTOM ; 
 int /*<<< orphan*/  BORDER_LEFT ; 
 int /*<<< orphan*/  BORDER_RIGHT ; 
 int /*<<< orphan*/  BORDER_TOP ; 
 int /*<<< orphan*/  CUSTOMFVF ; 
 int /*<<< orphan*/  D3DADAPTER_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int D3DCREATE_HARDWARE_VERTEXPROCESSING ; 
 int D3DCREATE_MULTITHREADED ; 
 int D3DCREATE_PUREDEVICE ; 
 int /*<<< orphan*/  D3DDEVTYPE_HAL ; 
 int /*<<< orphan*/  D3DPOOL_DEFAULT ; 
 int /*<<< orphan*/  D3DSWAPEFFECT_DISCARD ; 
 int D3DUSAGE_DYNAMIC ; 
 int D3DUSAGE_WRITEONLY ; 
 int /*<<< orphan*/  D3D_SDK_VERSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct CUSTOMVERTEX*,int) ; 

__attribute__((used)) static void FUNC8(struct render_context *ctx, HWND hWnd)
{
    ctx->hWnd = hWnd;
    HRESULT hr = FUNC1(D3D_SDK_VERSION, &ctx->d3d);

    D3DPRESENT_PARAMETERS d3dpp = { 0 };
    d3dpp.Windowed = TRUE;
    d3dpp.SwapEffect = D3DSWAPEFFECT_DISCARD;
    d3dpp.hDeviceWindow = hWnd;

    FUNC2(ctx->d3d, D3DADAPTER_DEFAULT,
                            D3DDEVTYPE_HAL,
                            NULL,
                            D3DCREATE_MULTITHREADED| D3DCREATE_HARDWARE_VERTEXPROCESSING | D3DCREATE_PUREDEVICE,
                            &d3dpp,
                            &ctx->d3ddev);

    FUNC4(ctx->d3ddev, 0, &ctx->backBuffer);

    struct CUSTOMVERTEX rectangleVertices[] =
    {
        {  BORDER_LEFT,    BORDER_TOP, 0.0f, 1.0f, FUNC0(255, 255, 255, 255), 0.0f, 0.0f },
        { BORDER_RIGHT,    BORDER_TOP, 0.0f, 1.0f, FUNC0(255, 255, 255, 255), 1.0f, 0.0f },
        { BORDER_RIGHT, BORDER_BOTTOM, 0.0f, 1.0f, FUNC0(255, 255, 255, 255), 1.0f, 1.0f },
        {  BORDER_LEFT, BORDER_BOTTOM, 0.0f, 1.0f, FUNC0(255, 255, 255, 255), 0.0f, 1.0f },
    };
    FUNC3(ctx->d3ddev, sizeof(rectangleVertices),
                                        D3DUSAGE_DYNAMIC|D3DUSAGE_WRITEONLY,
                                        CUSTOMFVF,
                                        D3DPOOL_DEFAULT,
                                        &ctx->rectangleFVFVertexBuf,
                                        NULL);

    LPVOID pVoid;
    FUNC5(ctx->rectangleFVFVertexBuf, 0, 0, (void**)&pVoid, 0);
    FUNC7(pVoid, rectangleVertices, sizeof(rectangleVertices));
    FUNC6(ctx->rectangleFVFVertexBuf);
}