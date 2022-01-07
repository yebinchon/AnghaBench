
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int WndWidth; int WndHeight; int ForegroundDc; int BackgroundDc; } ;
struct TYPE_5__ {int right; int bottom; scalar_t__ top; scalar_t__ left; } ;
typedef TYPE_1__ RECT ;
typedef TYPE_2__* PPERF_INFO ;


 int DT_LEFT ;
 int DT_TOP ;
 int DrawTextW (int ,char*,int,TYPE_1__*,int) ;
 int ScrollDC (int ,int,int,int *,int *,int *,int *) ;

void
ScrollProc(void *Context, PPERF_INFO PerfInfo, unsigned Reps)
{
    unsigned Rep;
    RECT rect;
    int x = 0, y = 0, dx = 1, dy = 1;

    rect.left = rect.top = 0;
    rect.right = PerfInfo->WndWidth;
    rect.bottom = PerfInfo->WndHeight;

    DrawTextW(PerfInfo->ForegroundDc, L"rosperf", -1, &rect, DT_LEFT | DT_TOP);

    for (Rep = 0; Rep < Reps; Rep++)
    {
        ScrollDC((Rep & 0x100) ? PerfInfo->BackgroundDc : PerfInfo->ForegroundDc,
                     dx, dy, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
        x += dx;
        y += dy;
        if ((x >= PerfInfo->WndWidth -50) || x == 0) dx = -dx;
        if ((y >= PerfInfo->WndHeight -10) || y == 0) dy = -dy;
    }

}
