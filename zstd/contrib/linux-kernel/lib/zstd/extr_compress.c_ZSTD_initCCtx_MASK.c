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
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_5__ {int /*<<< orphan*/  opaque; } ;
struct TYPE_6__ {int /*<<< orphan*/  workSpaceSize; TYPE_1__ customMem; int /*<<< orphan*/  workSpace; } ;
typedef  TYPE_2__ ZSTD_CCtx ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC1 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

ZSTD_CCtx *FUNC3(void *workspace, size_t workspaceSize)
{
	ZSTD_customMem const stackMem = FUNC1(workspace, workspaceSize);
	ZSTD_CCtx *cctx = FUNC0(stackMem);
	if (cctx) {
		cctx->workSpace = FUNC2(cctx->customMem.opaque, &cctx->workSpaceSize);
	}
	return cctx;
}