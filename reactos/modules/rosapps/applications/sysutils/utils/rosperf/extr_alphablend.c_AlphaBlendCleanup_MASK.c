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
struct TYPE_3__ {int /*<<< orphan*/  Bitmap; int /*<<< orphan*/  BitmapDc; } ;
typedef  int /*<<< orphan*/  PPERF_INFO ;
typedef  TYPE_1__* PALPHABLEND_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 

void
FUNC4(void *Context, PPERF_INFO PerfInfo)
{
  PALPHABLEND_CONTEXT ctx = Context;
  FUNC0(ctx->BitmapDc);
  FUNC1(ctx->Bitmap);
  FUNC3(FUNC2(), 0, ctx);
}