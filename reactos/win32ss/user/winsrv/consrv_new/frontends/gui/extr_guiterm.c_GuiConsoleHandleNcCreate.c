
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {int lpCreateParams; } ;
struct TYPE_16__ {TYPE_2__* ActiveBuffer; } ;
struct TYPE_11__ {int FontFamily; int FaceName; int FontWeight; int FontSize; } ;
struct TYPE_15__ {int * hWindow; int hGuiInitEvent; int CharWidth; scalar_t__ CharHeight; int * Font; TYPE_1__ GuiInfo; TYPE_6__* Console; } ;
struct TYPE_14__ {int cx; } ;
struct TYPE_13__ {scalar_t__ tmExternalLeading; scalar_t__ tmHeight; int tmMaxCharWidth; } ;
struct TYPE_12__ {int ForceCursorOff; int CursorBlinkOn; } ;
typedef TYPE_3__ TEXTMETRICW ;
typedef TYPE_4__ SIZE ;
typedef TYPE_5__* PGUI_CONSOLE_DATA ;
typedef TYPE_6__* PCONSOLE ;
typedef TYPE_7__* LPCREATESTRUCTW ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int * HFONT ;
typedef int * HDC ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int CLIP_DEFAULT_PRECIS ;
 int CONGUI_UPDATE_TIME ;
 int CONGUI_UPDATE_TIMER ;
 int * CreateFontW (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,int ) ;
 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int DefWindowProcW (int *,int ,int ,int ) ;
 int DeleteObject (int *) ;
 int FALSE ;
 int FIXED_PITCH ;
 int GWLP_USERDATA ;
 int * GetDC (int *) ;
 scalar_t__ GetTextExtentPoint32W (int *,char*,int,TYPE_4__*) ;
 int GetTextMetricsW (int *,TYPE_3__*) ;
 int GuiConsoleCreateSysMenu (int *) ;
 int LOWORD (int ) ;
 int NONANTIALIASED_QUALITY ;
 int OEM_CHARSET ;
 int OUT_DEFAULT_PRECIS ;
 int ReleaseDC (int *,int *) ;
 int * SelectObject (int *,int *) ;
 int SetEvent (int ) ;
 int SetTimer (int *,int ,int ,int *) ;
 int SetWindowLongPtrW (int *,int ,int ) ;
 int TA_BASELINE ;
 int TRUE ;
 int WM_NCCREATE ;

__attribute__((used)) static BOOL
GuiConsoleHandleNcCreate(HWND hWnd, LPCREATESTRUCTW Create)
{
    PGUI_CONSOLE_DATA GuiData = (PGUI_CONSOLE_DATA)Create->lpCreateParams;
    PCONSOLE Console;
    HDC Dc;
    HFONT OldFont;
    TEXTMETRICW Metrics;
    SIZE CharSize;

    DPRINT("GuiConsoleHandleNcCreate\n");

    if (((void*)0) == GuiData)
    {
        DPRINT1("GuiConsoleNcCreate: No GUI data\n");
        return FALSE;
    }

    Console = GuiData->Console;

    GuiData->hWindow = hWnd;

    GuiData->Font = CreateFontW(LOWORD(GuiData->GuiInfo.FontSize),
                                0,
                                0,
                                TA_BASELINE,
                                GuiData->GuiInfo.FontWeight,
                                FALSE,
                                FALSE,
                                FALSE,
                                OEM_CHARSET,
                                OUT_DEFAULT_PRECIS,
                                CLIP_DEFAULT_PRECIS,
                                NONANTIALIASED_QUALITY,
                                FIXED_PITCH | GuiData->GuiInfo.FontFamily ,
                                GuiData->GuiInfo.FaceName);

    if (((void*)0) == GuiData->Font)
    {
        DPRINT1("GuiConsoleNcCreate: CreateFont failed\n");
        GuiData->hWindow = ((void*)0);
        SetEvent(GuiData->hGuiInitEvent);
        return FALSE;
    }
    Dc = GetDC(GuiData->hWindow);
    if (((void*)0) == Dc)
    {
        DPRINT1("GuiConsoleNcCreate: GetDC failed\n");
        DeleteObject(GuiData->Font);
        GuiData->hWindow = ((void*)0);
        SetEvent(GuiData->hGuiInitEvent);
        return FALSE;
    }
    OldFont = SelectObject(Dc, GuiData->Font);
    if (((void*)0) == OldFont)
    {
        DPRINT1("GuiConsoleNcCreate: SelectObject failed\n");
        ReleaseDC(GuiData->hWindow, Dc);
        DeleteObject(GuiData->Font);
        GuiData->hWindow = ((void*)0);
        SetEvent(GuiData->hGuiInitEvent);
        return FALSE;
    }
    if (!GetTextMetricsW(Dc, &Metrics))
    {
        DPRINT1("GuiConsoleNcCreate: GetTextMetrics failed\n");
        SelectObject(Dc, OldFont);
        ReleaseDC(GuiData->hWindow, Dc);
        DeleteObject(GuiData->Font);
        GuiData->hWindow = ((void*)0);
        SetEvent(GuiData->hGuiInitEvent);
        return FALSE;
    }
    GuiData->CharWidth = Metrics.tmMaxCharWidth;
    GuiData->CharHeight = Metrics.tmHeight + Metrics.tmExternalLeading;


    if (GetTextExtentPoint32W(Dc, L"R", 1, &CharSize))
        GuiData->CharWidth = CharSize.cx;

    SelectObject(Dc, OldFont);

    ReleaseDC(GuiData->hWindow, Dc);


    Console->ActiveBuffer->CursorBlinkOn = TRUE;
    Console->ActiveBuffer->ForceCursorOff = FALSE;


    SetWindowLongPtrW(GuiData->hWindow, GWLP_USERDATA, (DWORD_PTR)GuiData);

    SetTimer(GuiData->hWindow, CONGUI_UPDATE_TIMER, CONGUI_UPDATE_TIME, ((void*)0));
    GuiConsoleCreateSysMenu(GuiData->hWindow);

    DPRINT("GuiConsoleHandleNcCreate - setting start event\n");
    SetEvent(GuiData->hGuiInitEvent);

    return (BOOL)DefWindowProcW(GuiData->hWindow, WM_NCCREATE, 0, (LPARAM)Create);
}
