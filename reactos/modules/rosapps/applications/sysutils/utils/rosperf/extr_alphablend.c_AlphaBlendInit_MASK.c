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
struct TYPE_6__ {int /*<<< orphan*/  BitmapDc; int /*<<< orphan*/  Bitmap; } ;
struct TYPE_5__ {scalar_t__ WndWidth; scalar_t__ WndHeight; int /*<<< orphan*/  BackgroundDc; } ;
typedef  TYPE_1__* PPERF_INFO ;
typedef  TYPE_2__* PALPHABLEND_CONTEXT ;
typedef  scalar_t__ INT ;
typedef  int /*<<< orphan*/  ALPHABLEND_CONTEXT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

unsigned
FUNC7(void **Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  PALPHABLEND_CONTEXT ctx = FUNC3(FUNC2(), 0, sizeof (ALPHABLEND_CONTEXT));
  INT x, y;

  ctx->BitmapDc = FUNC1(PerfInfo->BackgroundDc);
  ctx->Bitmap = FUNC0(PerfInfo->BackgroundDc, PerfInfo->WndWidth, PerfInfo->WndHeight);
  FUNC5(ctx->BitmapDc, ctx->Bitmap);

  for (y = 0; y < PerfInfo->WndHeight; y++)
    {
      for (x = 0; x < PerfInfo->WndWidth; x++)
        {
          FUNC6(ctx->BitmapDc, x, y, FUNC4(0xff, 0x00, 0x00));
        }
    }

  *Context = ctx;

  return Reps;
}