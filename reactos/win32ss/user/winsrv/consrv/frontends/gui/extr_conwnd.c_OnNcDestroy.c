
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ hBitmap; scalar_t__ hMemDC; scalar_t__ IsWindowVisible; } ;
typedef TYPE_1__* PGUI_CONSOLE_DATA ;
typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD_PTR ;


 int CONGUI_UPDATE_TIMER ;
 int DefWindowProcW (int ,int ,int ,int ) ;
 int DeleteDC (scalar_t__) ;
 int DeleteFonts (TYPE_1__*) ;
 int DeleteObject (scalar_t__) ;
 int GWLP_USERDATA ;
 int GetSystemMenu (int ,int ) ;
 TYPE_1__* GuiGetGuiData (int ) ;
 int KillTimer (int ,int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRUE ;
 int WM_NCDESTROY ;

__attribute__((used)) static LRESULT
OnNcDestroy(HWND hWnd)
{
    PGUI_CONSOLE_DATA GuiData = GuiGetGuiData(hWnd);


    SetWindowLongPtrW(hWnd, GWLP_USERDATA, (DWORD_PTR)((void*)0));


    GetSystemMenu(hWnd, TRUE);

    if (GuiData)
    {
        if (GuiData->IsWindowVisible)
            KillTimer(hWnd, CONGUI_UPDATE_TIMER);


        if (GuiData->hMemDC ) DeleteDC(GuiData->hMemDC);
        if (GuiData->hBitmap) DeleteObject(GuiData->hBitmap);

        DeleteFonts(GuiData);
    }

    return DefWindowProcW(hWnd, WM_NCDESTROY, 0, 0);
}
