#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  tuple; } ;
struct TYPE_6__ {int /*<<< orphan*/  heap_scan; } ;
struct TYPE_9__ {TYPE_3__ tinfo; TYPE_2__* sctx; TYPE_1__ scan; } ;
struct TYPE_7__ {int /*<<< orphan*/  scandirection; } ;
typedef  TYPE_4__ InternalScannerCtx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2(InternalScannerCtx *ctx)
{
	ctx->tinfo.tuple = FUNC1(ctx->scan.heap_scan, ctx->sctx->scandirection);
	return FUNC0(ctx->tinfo.tuple);
}