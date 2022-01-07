
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int WndWidth; int WndHeight; int ForegroundDc; int BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;
typedef int HDC ;


 int LineTo (int ,int,int ) ;
 int MoveToEx (int ,int,int ,int *) ;

void
LinesVerticalProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  unsigned Rep;
  int x;
  HDC Dc;

  for (Rep = 0; Rep < Reps; )
    {
      Dc = (Rep & 0x1000) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc;

      for (x = 0; x < PerfInfo->WndWidth && Rep < Reps; Rep++, x += 3)
        {
          MoveToEx(Dc, x, 0, ((void*)0));
          LineTo(Dc, x, PerfInfo->WndHeight);
        }
    }
}
