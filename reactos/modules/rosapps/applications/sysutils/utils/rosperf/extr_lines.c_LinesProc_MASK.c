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
struct TYPE_3__ {int WndHeight; int WndWidth; int /*<<< orphan*/  ForegroundDc; int /*<<< orphan*/  BackgroundDc; } ;
typedef  TYPE_1__* PPERF_INFO ;
typedef  int /*<<< orphan*/  HDC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

void
FUNC2(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  unsigned Rep;
  int Dest;
  HDC Dc;

  for (Rep = 0; Rep < Reps; )
    {
      Dc = (Rep & 0x1000) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc;

      for (Dest = 2; Dest < PerfInfo->WndHeight && Rep < Reps; Rep++, Dest += 2)
        {
          FUNC1(Dc, 0, 0, NULL);
          FUNC0(Dc, PerfInfo->WndWidth, Dest);
        }

      for (Dest = PerfInfo->WndWidth - 2; 0 <= Dest && Rep < Reps; Rep++, Dest -= 2)
        {
          FUNC1(Dc, PerfInfo->WndWidth, 0, NULL);
          FUNC0(Dc, Dest, PerfInfo->WndHeight);
        }

      for (Dest = PerfInfo->WndHeight - 2; 0 <= Dest && Rep < Reps; Rep++, Dest -= 2)
        {
          FUNC1(Dc, PerfInfo->WndWidth, PerfInfo->WndHeight, NULL);
          FUNC0(Dc, 0, Dest);
        }

      for (Dest = 2; Dest < PerfInfo->WndWidth && Rep < Reps; Rep++, Dest += 2)
        {
          FUNC1(Dc, 0, PerfInfo->WndHeight, NULL);
          FUNC0(Dc, Dest, 0);
        }
    }
}