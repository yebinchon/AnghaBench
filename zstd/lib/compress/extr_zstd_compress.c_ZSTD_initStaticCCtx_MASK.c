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
typedef  int /*<<< orphan*/  ZSTD_cwksp ;
typedef  int /*<<< orphan*/  ZSTD_compressedBlockState_t ;
struct TYPE_5__ {int /*<<< orphan*/ * nextCBlock; int /*<<< orphan*/ * prevCBlock; } ;
struct TYPE_6__ {size_t staticSize; int /*<<< orphan*/  bmi2; int /*<<< orphan*/  workspace; int /*<<< orphan*/ * entropyWorkspace; TYPE_1__ blockState; } ;
typedef  TYPE_2__ ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int HUF_WORKSPACE_SIZE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

ZSTD_CCtx* FUNC7(void *workspace, size_t workspaceSize)
{
    ZSTD_cwksp ws;
    ZSTD_CCtx* cctx;
    if (workspaceSize <= sizeof(ZSTD_CCtx)) return NULL;  /* minimum size */
    if ((size_t)workspace & 7) return NULL;  /* must be 8-aligned */
    FUNC3(&ws, workspace, workspaceSize);

    cctx = (ZSTD_CCtx*)FUNC5(&ws, sizeof(ZSTD_CCtx));
    if (cctx == NULL) {
        return NULL;
    }
    FUNC6(cctx, 0, sizeof(ZSTD_CCtx));
    FUNC4(&cctx->workspace, &ws);
    cctx->staticSize = workspaceSize;

    /* statically sized space. entropyWorkspace never moves (but prev/next block swap places) */
    if (!FUNC2(&cctx->workspace, HUF_WORKSPACE_SIZE + 2 * sizeof(ZSTD_compressedBlockState_t))) return NULL;
    cctx->blockState.prevCBlock = (ZSTD_compressedBlockState_t*)FUNC5(&cctx->workspace, sizeof(ZSTD_compressedBlockState_t));
    cctx->blockState.nextCBlock = (ZSTD_compressedBlockState_t*)FUNC5(&cctx->workspace, sizeof(ZSTD_compressedBlockState_t));
    cctx->entropyWorkspace = (U32*)FUNC5(
        &cctx->workspace, HUF_WORKSPACE_SIZE);
    cctx->bmi2 = FUNC1(FUNC0());
    return cctx;
}