
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int WndHeight; int WndWidth; int ForegroundDc; int BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;


 int PATCOPY ;
 int PatBlt (int ,int ,int ,int ,int ,int ) ;

void
FillProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  unsigned Rep;

  for (Rep = 0; Rep < Reps; Rep++)
    {
      PatBlt((Rep & 0x100) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc, 0, 0,
             PerfInfo->WndWidth, PerfInfo->WndHeight, PATCOPY);
    }
}
