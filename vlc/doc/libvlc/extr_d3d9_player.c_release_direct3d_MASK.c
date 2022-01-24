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
struct render_context {int /*<<< orphan*/  d3d; scalar_t__ d3ddev; scalar_t__ libvlc_d3d; scalar_t__ rectangleFVFVertexBuf; scalar_t__ sharedRenderTexture; scalar_t__ sharedRenderSurface; scalar_t__ renderTexture; scalar_t__ backBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct render_context *ctx)
{
    if (ctx->backBuffer)
        FUNC2(ctx->backBuffer);
    if (ctx->renderTexture)
        FUNC3(ctx->renderTexture);
    if (ctx->sharedRenderSurface)
        FUNC2(ctx->sharedRenderSurface);
    if (ctx->sharedRenderTexture)
        FUNC3(ctx->sharedRenderTexture);
    if (ctx->rectangleFVFVertexBuf)
        FUNC4(ctx->rectangleFVFVertexBuf);
    if (ctx->libvlc_d3d)
        FUNC1(ctx->libvlc_d3d);
    FUNC1(ctx->d3ddev);
    FUNC0(ctx->d3d);
}