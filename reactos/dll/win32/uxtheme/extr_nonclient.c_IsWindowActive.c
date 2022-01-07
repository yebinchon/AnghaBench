
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HWND ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ GetForegroundWindow () ;
 int GetParent (scalar_t__) ;
 int IsChild (scalar_t__,scalar_t__) ;
 scalar_t__ SendMessageW (int ,int ,int ,int ) ;
 int WM_MDIGETACTIVE ;
 int WS_EX_MDICHILD ;

__attribute__((used)) static BOOL
IsWindowActive(HWND hWnd, DWORD ExStyle)
{
    BOOL ret;

    if (ExStyle & WS_EX_MDICHILD)
    {
        ret = IsChild(GetForegroundWindow(), hWnd);
        if (ret)
            ret = (hWnd == (HWND)SendMessageW(GetParent(hWnd), WM_MDIGETACTIVE, 0, 0));
    }
    else
    {
        ret = (GetForegroundWindow() == hWnd);
    }

    return ret;
}
