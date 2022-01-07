
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int VOID ;
typedef int UINT ;
struct TYPE_14__ {int X; int Y; } ;
struct TYPE_13__ {int X; int Y; } ;
struct TYPE_12__ {int Y; int X; } ;
struct TYPE_17__ {TYPE_3__ ViewOrigin; TYPE_2__ ViewSize; TYPE_1__ ScreenBufferSize; } ;
struct TYPE_16__ {int hWindow; int Console; } ;
struct TYPE_15__ {int cbSize; int fMask; int nMax; int nPage; int nPos; scalar_t__ nMin; } ;
typedef TYPE_4__ SCROLLINFO ;
typedef TYPE_5__* PGUI_CONSOLE_DATA ;
typedef TYPE_6__* PCONSOLE_SCREEN_BUFFER ;
typedef int PCONSOLE ;
typedef int DWORD ;


 TYPE_6__* ConDrvGetActiveScreenBuffer (int ) ;
 int FALSE ;
 int GetScreenBufferSizeUnits (TYPE_6__*,TYPE_5__*,int*,int*) ;
 int GetSystemMetrics (int ) ;
 int SB_HORZ ;
 int SB_VERT ;
 int SIF_PAGE ;
 int SIF_POS ;
 int SIF_RANGE ;
 int SM_CXEDGE ;
 int SM_CXFRAME ;
 int SM_CXVSCROLL ;
 int SM_CYCAPTION ;
 int SM_CYEDGE ;
 int SM_CYFRAME ;
 int SM_CYHSCROLL ;
 int SWP_NOACTIVATE ;
 int SWP_NOCOPYBITS ;
 int SWP_NOMOVE ;
 int SWP_NOZORDER ;
 int SetScrollInfo (int ,int ,TYPE_4__*,int ) ;
 int SetWindowPos (int ,int *,int ,int ,int,int,int) ;
 int ShowScrollBar (int ,int ,int ) ;
 int TRUE ;

__attribute__((used)) static VOID
GuiConsoleResizeWindow(PGUI_CONSOLE_DATA GuiData)
{
    PCONSOLE Console = GuiData->Console;
    PCONSOLE_SCREEN_BUFFER Buff = ConDrvGetActiveScreenBuffer(Console);
    SCROLLINFO sInfo;

    DWORD Width, Height;
    UINT WidthUnit, HeightUnit;

    GetScreenBufferSizeUnits(Buff, GuiData, &WidthUnit, &HeightUnit);

    Width = Buff->ViewSize.X * WidthUnit +
             2 * (GetSystemMetrics(SM_CXFRAME) + GetSystemMetrics(SM_CXEDGE));
    Height = Buff->ViewSize.Y * HeightUnit +
             2 * (GetSystemMetrics(SM_CYFRAME) + GetSystemMetrics(SM_CYEDGE)) + GetSystemMetrics(SM_CYCAPTION);


    sInfo.cbSize = sizeof(SCROLLINFO);
    sInfo.fMask = SIF_RANGE | SIF_PAGE | SIF_POS;
    sInfo.nMin = 0;
    if (Buff->ScreenBufferSize.Y > Buff->ViewSize.Y)
    {
        sInfo.nMax = Buff->ScreenBufferSize.Y - 1;
        sInfo.nPage = Buff->ViewSize.Y;
        sInfo.nPos = Buff->ViewOrigin.Y;
        SetScrollInfo(GuiData->hWindow, SB_VERT, &sInfo, TRUE);
        Width += GetSystemMetrics(SM_CXVSCROLL);
        ShowScrollBar(GuiData->hWindow, SB_VERT, TRUE);
    }
    else
    {
        ShowScrollBar(GuiData->hWindow, SB_VERT, FALSE);
    }

    if (Buff->ScreenBufferSize.X > Buff->ViewSize.X)
    {
        sInfo.nMax = Buff->ScreenBufferSize.X - 1;
        sInfo.nPage = Buff->ViewSize.X;
        sInfo.nPos = Buff->ViewOrigin.X;
        SetScrollInfo(GuiData->hWindow, SB_HORZ, &sInfo, TRUE);
        Height += GetSystemMetrics(SM_CYHSCROLL);
        ShowScrollBar(GuiData->hWindow, SB_HORZ, TRUE);
    }
    else
    {
        ShowScrollBar(GuiData->hWindow, SB_HORZ, FALSE);
    }


    SetWindowPos(GuiData->hWindow, ((void*)0), 0, 0, Width, Height,
                 SWP_NOZORDER | SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOCOPYBITS);


}
