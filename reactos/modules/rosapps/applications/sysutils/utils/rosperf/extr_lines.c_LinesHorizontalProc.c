
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int WndHeight; int WndWidth; int ForegroundDc; int BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;
typedef int HDC ;


 int LineTo (int ,int ,int) ;
 int MoveToEx (int ,int ,int,int *) ;

void
LinesHorizontalProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  unsigned Rep;
  int y;
  HDC Dc;

  for (Rep = 0; Rep < Reps; )
    {
      Dc = (Rep & 0x10000) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc;

      for (y = 0; y < PerfInfo->WndHeight && Rep < Reps; Rep++, y += 3)
        {
          MoveToEx(Dc, 0, y, ((void*)0));
          LineTo(Dc, PerfInfo->WndWidth, y);
        }
    }
}
