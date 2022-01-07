
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef int HWND ;
typedef int DWORD_PTR ;


 int CONGUI_UPDATE_TIMER ;
 int DefWindowProcW (int ,int ,int ,int ) ;
 int GWLP_USERDATA ;
 int GetSystemMenu (int ,int ) ;
 int KillTimer (int ,int ) ;
 int SetWindowLongPtrW (int ,int ,int ) ;
 int TRUE ;
 int WM_NCDESTROY ;

__attribute__((used)) static LRESULT
GuiConsoleHandleNcDestroy(HWND hWnd)
{
    KillTimer(hWnd, CONGUI_UPDATE_TIMER);
    GetSystemMenu(hWnd, TRUE);


    SetWindowLongPtrW(hWnd, GWLP_USERDATA, (DWORD_PTR)((void*)0));

    return DefWindowProcW(hWnd, WM_NCDESTROY, 0, 0);
}
