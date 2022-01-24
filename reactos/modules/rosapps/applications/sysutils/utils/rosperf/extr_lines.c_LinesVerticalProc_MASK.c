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
struct TYPE_3__ {int WndWidth; int /*<<< orphan*/  WndHeight; int /*<<< orphan*/  ForegroundDc; int /*<<< orphan*/  BackgroundDc; } ;
typedef  TYPE_1__* PPERF_INFO ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC2(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  unsigned Rep;
  int x;
  HDC Dc;

  for (Rep = 0; Rep < Reps; )
    {
      Dc = (Rep & 0x1000) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc;

      for (x = 0; x < PerfInfo->WndWidth && Rep < Reps; Rep++, x += 3)
        {
          FUNC1(Dc, x, 0, NULL);
          FUNC0(Dc, x, PerfInfo->WndHeight);
        }
    }
}