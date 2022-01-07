
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int WndHeight; int Wnd; int * ForegroundDc; int * BackgroundDc; } ;
typedef TYPE_1__* PPERF_INFO ;
typedef int HFONT ;
typedef int * HDC ;


 int DEFAULT_GUI_FONT ;
 int GetStockObject (int ) ;
 int InvalidateRect (int ,int *,int ) ;
 int SelectObject (int *,int ) ;
 int TRUE ;
 int TextOut (int *,int ,int,char*,int) ;
 int UpdateWindow (int ) ;

void
TextProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
  unsigned Rep;
  int y;
  HDC Dc = ((void*)0);
  HFONT hfFont = GetStockObject(DEFAULT_GUI_FONT);

  for (Rep = 0; Rep < Reps; )
    {
      Dc = (Rep & 0x10000) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc;
      SelectObject(Dc, hfFont);

      for (y = 0; y < PerfInfo->WndHeight && Rep < Reps; Rep++, y += 15)
        {
  TextOut(Dc, 0, y, L"AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz:?<>0123456789", 66);
        }
    InvalidateRect(PerfInfo->Wnd, ((void*)0), TRUE);
    UpdateWindow(PerfInfo->Wnd);
    }
}
