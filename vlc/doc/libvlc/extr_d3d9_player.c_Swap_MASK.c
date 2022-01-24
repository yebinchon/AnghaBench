#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct render_context {int /*<<< orphan*/  hWnd; int /*<<< orphan*/  d3ddev; int /*<<< orphan*/  rectangleFVFVertexBuf; scalar_t__ renderTexture; int /*<<< orphan*/  backBuffer; } ;
struct CUSTOMVERTEX {int dummy; } ;
typedef  int /*<<< orphan*/  IDirect3DBaseTexture9 ;

/* Variables and functions */
 int /*<<< orphan*/  CUSTOMFVF ; 
 int /*<<< orphan*/  D3DCLEAR_TARGET ; 
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  D3DPT_TRIANGLEFAN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct render_context *ctx)
{
    /* finished drawing to our swap surface, now render that surface to the backbuffer */
    FUNC7(ctx->d3ddev, 0, ctx->backBuffer);

    /* clear the backbuffer to orange */
    FUNC2(ctx->d3ddev, 0, NULL, D3DCLEAR_TARGET, FUNC0(255, 120, 0), 1.0f, 0);

    FUNC1(ctx->d3ddev);
    FUNC9(ctx->d3ddev, 0, (IDirect3DBaseTexture9*)ctx->renderTexture);

    FUNC8(ctx->d3ddev, 0, ctx->rectangleFVFVertexBuf, 0, sizeof(struct CUSTOMVERTEX));
    FUNC6(ctx->d3ddev, CUSTOMFVF);
    FUNC3(ctx->d3ddev, D3DPT_TRIANGLEFAN, 0, 2);
    FUNC4(ctx->d3ddev);

    FUNC5(ctx->d3ddev, NULL, NULL, ctx->hWnd, NULL);
}