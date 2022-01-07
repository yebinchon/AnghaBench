
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ WndWidth; scalar_t__ WndHeight; int ForegroundDc; int BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;


 int PATCOPY ;
 int PatBlt (int ,int,int,scalar_t__,scalar_t__,int ) ;
 scalar_t__ SMALL_SIZE ;

void
FillSmallProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{

  unsigned Rep;
  int x, y;

  x = 0;
  y = 0;

  for (Rep = 0; Rep < Reps; Rep++)
    {
      PatBlt((Rep & 0x10000) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc, x, y,
             16, 16, PATCOPY);
      x += 16 + 1;
      if (PerfInfo->WndWidth < x + 16)
        {
          x = 0;
          y += 16 + 1;
          if (PerfInfo->WndHeight < y + 16)
            {
              y = 0;
            }
        }
    }
}
