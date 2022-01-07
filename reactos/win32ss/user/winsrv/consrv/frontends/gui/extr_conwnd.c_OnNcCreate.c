
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int lpCreateParams; } ;
struct TYPE_11__ {TYPE_2__* ActiveBuffer; } ;
struct TYPE_8__ {int FontWeight; int FontSize; int FontFamily; int FaceName; } ;
struct TYPE_10__ {scalar_t__ hIcon; int * hWindow; int hGuiInitEvent; scalar_t__ IsWindowVisible; scalar_t__ hIconSm; int * hSysPalette; int * hBitmap; int hMemDC; TYPE_1__ GuiInfo; int hSysMenu; TYPE_4__* Console; } ;
struct TYPE_9__ {int ForceCursorOff; int CursorBlinkOn; } ;
typedef TYPE_3__* PGUI_CONSOLE_DATA ;
typedef TYPE_4__* PCONSRV_CONSOLE ;
typedef TYPE_5__* LPCREATESTRUCTW ;
typedef int LPARAM ;
typedef int * HWND ;
typedef int DWORD_PTR ;
typedef int BOOL ;


 int CONGUI_UPDATE_TIME ;
 int CONGUI_UPDATE_TIMER ;
 int CreateCompatibleDC (int *) ;
 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int DefWindowProcW (int *,int ,int ,int ) ;
 int DragAcceptFiles (int *,int ) ;
 int FALSE ;
 int GWLP_USERDATA ;
 int GetSystemMenu (int *,int ) ;
 int ICON_BIG ;
 int ICON_SMALL ;
 int InitFonts (TYPE_3__*,int ,int ,int ,int ) ;
 int NtSetEvent (int ,int *) ;
 int SetTimer (int *,int ,int ,int *) ;
 int SetWindowLongPtrW (int *,int ,int ) ;
 int TRUE ;
 int WM_NCCREATE ;
 int WM_SETICON ;
 scalar_t__ ghDefaultIcon ;

__attribute__((used)) static BOOL
OnNcCreate(HWND hWnd, LPCREATESTRUCTW Create)
{
    PGUI_CONSOLE_DATA GuiData = (PGUI_CONSOLE_DATA)Create->lpCreateParams;
    PCONSRV_CONSOLE Console;

    if (GuiData == ((void*)0))
    {
        DPRINT1("GuiConsoleNcCreate: No GUI data\n");
        return FALSE;
    }

    Console = GuiData->Console;

    GuiData->hWindow = hWnd;
    GuiData->hSysMenu = GetSystemMenu(hWnd, FALSE);


    if (!InitFonts(GuiData,
                   GuiData->GuiInfo.FaceName,
                   GuiData->GuiInfo.FontFamily,
                   GuiData->GuiInfo.FontSize,
                   GuiData->GuiInfo.FontWeight))
    {
        DPRINT1("GuiConsoleNcCreate: InitFonts failed\n");
        GuiData->hWindow = ((void*)0);
        NtSetEvent(GuiData->hGuiInitEvent, ((void*)0));
        return FALSE;
    }


    GuiData->hMemDC = CreateCompatibleDC(((void*)0));
    GuiData->hBitmap = ((void*)0);
    GuiData->hSysPalette = ((void*)0);


    if (GuiData->hIcon != ghDefaultIcon)
    {
        DefWindowProcW(GuiData->hWindow, WM_SETICON, ICON_BIG , (LPARAM)GuiData->hIcon );
        DefWindowProcW(GuiData->hWindow, WM_SETICON, ICON_SMALL, (LPARAM)GuiData->hIconSm);
    }


    Console->ActiveBuffer->CursorBlinkOn = TRUE;
    Console->ActiveBuffer->ForceCursorOff = FALSE;


    SetWindowLongPtrW(GuiData->hWindow, GWLP_USERDATA, (DWORD_PTR)GuiData);

    if (GuiData->IsWindowVisible)
    {
        SetTimer(GuiData->hWindow, CONGUI_UPDATE_TIMER, CONGUI_UPDATE_TIME, ((void*)0));
    }




    DPRINT("OnNcCreate - setting start event\n");
    NtSetEvent(GuiData->hGuiInitEvent, ((void*)0));


    DragAcceptFiles(GuiData->hWindow, TRUE);

    return (BOOL)DefWindowProcW(GuiData->hWindow, WM_NCCREATE, 0, (LPARAM)Create);
}
