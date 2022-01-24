#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  indexrel; TYPE_1__* sctx; int /*<<< orphan*/  tablerel; } ;
struct TYPE_4__ {int /*<<< orphan*/  lockmode; int /*<<< orphan*/  index; int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  Relation ;
typedef  TYPE_2__ InternalScannerCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Relation
FUNC2(InternalScannerCtx *ctx)
{
	ctx->tablerel = FUNC0(ctx->sctx->table, ctx->sctx->lockmode);
	ctx->indexrel = FUNC1(ctx->sctx->index, ctx->sctx->lockmode);
	return ctx->indexrel;
}