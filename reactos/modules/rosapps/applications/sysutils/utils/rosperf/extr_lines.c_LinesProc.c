
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int WndHeight; int WndWidth; int ForegroundDc; int BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;
typedef int HDC ;


 int LineTo (int ,int,int) ;
 int MoveToEx (int ,int,int,int *) ;

void
LinesProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  unsigned Rep;
  int Dest;
  HDC Dc;

  for (Rep = 0; Rep < Reps; )
    {
      Dc = (Rep & 0x1000) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc;

      for (Dest = 2; Dest < PerfInfo->WndHeight && Rep < Reps; Rep++, Dest += 2)
        {
          MoveToEx(Dc, 0, 0, ((void*)0));
          LineTo(Dc, PerfInfo->WndWidth, Dest);
        }

      for (Dest = PerfInfo->WndWidth - 2; 0 <= Dest && Rep < Reps; Rep++, Dest -= 2)
        {
          MoveToEx(Dc, PerfInfo->WndWidth, 0, ((void*)0));
          LineTo(Dc, Dest, PerfInfo->WndHeight);
        }

      for (Dest = PerfInfo->WndHeight - 2; 0 <= Dest && Rep < Reps; Rep++, Dest -= 2)
        {
          MoveToEx(Dc, PerfInfo->WndWidth, PerfInfo->WndHeight, ((void*)0));
          LineTo(Dc, 0, Dest);
        }

      for (Dest = 2; Dest < PerfInfo->WndWidth && Rep < Reps; Rep++, Dest += 2)
        {
          MoveToEx(Dc, 0, PerfInfo->WndHeight, ((void*)0));
          LineTo(Dc, Dest, 0);
        }
    }
}
