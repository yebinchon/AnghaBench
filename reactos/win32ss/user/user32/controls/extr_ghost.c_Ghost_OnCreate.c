
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int bDestroyTarget; scalar_t__ hbm32bpp; scalar_t__ hwndTarget; } ;
typedef TYPE_1__ WCHAR ;
struct TYPE_22__ {scalar_t__ lpCreateParams; } ;
struct TYPE_21__ {scalar_t__ fnid; } ;
struct TYPE_20__ {scalar_t__ top; scalar_t__ bottom; scalar_t__ left; scalar_t__ right; } ;
typedef TYPE_2__ RECT ;
typedef TYPE_3__* PWND ;
typedef TYPE_1__* LPWSTR ;
typedef int LONG_PTR ;
typedef int INT ;
typedef scalar_t__ HWND ;
typedef scalar_t__ HBITMAP ;
typedef TYPE_1__ GHOST_DATA ;
typedef int DWORD ;
typedef TYPE_6__ CREATESTRUCTW ;
typedef int BOOL ;


 int ARRAYSIZE (TYPE_1__*) ;
 int DeleteObject (scalar_t__) ;
 int ERR (char*,...) ;
 int FALSE ;
 scalar_t__ FNID_GHOST ;
 int GHOST_INTERVAL ;
 int GHOST_PROP ;
 int GHOST_TIMER_ID ;
 int GWLP_USERDATA ;
 int GWL_EXSTYLE ;
 int GWL_STYLE ;
 int GW_HWNDPREV ;
 int GetProcessHeap () ;
 scalar_t__ GetPropW (scalar_t__,int ) ;
 scalar_t__ GetWindow (scalar_t__,int ) ;
 int GetWindowLongPtrW (scalar_t__,int ) ;
 int GetWindowRect (scalar_t__,TYPE_2__*) ;
 TYPE_1__* Ghost_GetText (scalar_t__,int*,int) ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IDS_NOT_RESPONDING ;
 scalar_t__ IntGetWindowBitmap (scalar_t__,scalar_t__,scalar_t__) ;
 int IntMakeGhostImage (scalar_t__) ;
 int InternalGetWindowText (scalar_t__,TYPE_1__*,int) ;
 int InvalidateRect (scalar_t__,int *,int ) ;
 int IsHungAppWindow (scalar_t__) ;
 int IsWindowVisible (scalar_t__) ;
 int LoadStringW (int ,int ,TYPE_1__*,int) ;
 int MoveWindow (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 int NtUserSetWindowFNID (scalar_t__,scalar_t__) ;
 int SWP_DRAWFRAME ;
 int SWP_NOACTIVATE ;
 int SWP_NOMOVE ;
 int SWP_NOOWNERZORDER ;
 int SW_HIDE ;
 int SetPropW (scalar_t__,int ,scalar_t__) ;
 int SetTimer (scalar_t__,int ,int ,int *) ;
 int SetWindowLongPtrW (scalar_t__,int ,int) ;
 int SetWindowPos (scalar_t__,scalar_t__,int ,int ,int ,int ,int) ;
 int SetWindowTextW (scalar_t__,TYPE_1__*) ;
 int ShowWindowAsync (scalar_t__,int ) ;
 int StringCchCatW (TYPE_1__*,int,TYPE_1__*) ;
 int TRUE ;
 int User32Instance ;
 TYPE_3__* ValidateHwnd (scalar_t__) ;
 int WS_CHILD ;
 int WS_HSCROLL ;
 int WS_VISIBLE ;
 int WS_VSCROLL ;

__attribute__((used)) static BOOL
Ghost_OnCreate(HWND hwnd, CREATESTRUCTW *lpcs)
{
    HBITMAP hbm32bpp;
    HWND hwndTarget, hwndPrev;
    GHOST_DATA *pData;
    RECT rc;
    DWORD style, exstyle;
    WCHAR szTextW[320], szNotRespondingW[32];
    LPWSTR pszTextW;
    INT cchTextW, cchExtraW, cchNonExtraW;
    PWND pWnd = ValidateHwnd(hwnd);
    if (pWnd)
    {
        if (!pWnd->fnid)
        {
            NtUserSetWindowFNID(hwnd, FNID_GHOST);
        }
        else if (pWnd->fnid != FNID_GHOST)
        {
             ERR("Wrong window class for Ghost! fnId 0x%x\n", pWnd->fnid);
             return FALSE;
        }
    }


    hwndTarget = (HWND)lpcs->lpCreateParams;
    if (!IsWindowVisible(hwndTarget) ||
        (GetWindowLongPtrW(hwndTarget, GWL_STYLE) & WS_CHILD) ||
        !IsHungAppWindow(hwndTarget))
    {
        return FALSE;
    }


    if (GetPropW(hwndTarget, GHOST_PROP))
        return FALSE;


    SetPropW(hwndTarget, GHOST_PROP, hwnd);


    pData = HeapAlloc(GetProcessHeap(), 0, sizeof(GHOST_DATA));
    if (!pData)
    {
        ERR("HeapAlloc failed\n");
        return FALSE;
    }


    GetWindowRect(hwndTarget, &rc);
    hbm32bpp = IntGetWindowBitmap(hwndTarget,
                                  rc.right - rc.left,
                                  rc.bottom - rc.top);
    if (!hbm32bpp)
    {
        ERR("hbm32bpp was NULL\n");
        HeapFree(GetProcessHeap(), 0, pData);
        return FALSE;
    }

    IntMakeGhostImage(hbm32bpp);


    pData->hwndTarget = hwndTarget;
    pData->hbm32bpp = hbm32bpp;
    pData->bDestroyTarget = FALSE;
    SetWindowLongPtrW(hwnd, GWLP_USERDATA, (LONG_PTR)pData);


    style = GetWindowLongPtrW(hwndTarget, GWL_STYLE);
    exstyle = GetWindowLongPtrW(hwndTarget, GWL_EXSTYLE);


    cchTextW = ARRAYSIZE(szTextW);
    cchExtraW = ARRAYSIZE(szNotRespondingW);
    cchNonExtraW = cchTextW - cchExtraW;
    if (InternalGetWindowText(hwndTarget, szTextW,
                              cchNonExtraW) < cchNonExtraW - 1)
    {
        pszTextW = szTextW;
    }
    else
    {
        cchTextW *= 2;
        pszTextW = Ghost_GetText(hwndTarget, &cchTextW, cchExtraW);
        if (!pszTextW)
        {
            ERR("Ghost_GetText failed\n");
            DeleteObject(hbm32bpp);
            HeapFree(GetProcessHeap(), 0, pData);
            return FALSE;
        }
    }


    style &= ~(WS_HSCROLL | WS_VSCROLL | WS_VISIBLE);


    SetWindowLongPtrW(hwnd, GWL_STYLE, style);
    SetWindowLongPtrW(hwnd, GWL_EXSTYLE, exstyle);


    LoadStringW(User32Instance, IDS_NOT_RESPONDING,
                szNotRespondingW, ARRAYSIZE(szNotRespondingW));
    StringCchCatW(pszTextW, cchTextW, szNotRespondingW);
    SetWindowTextW(hwnd, pszTextW);


    if (szTextW != pszTextW)
        HeapFree(GetProcessHeap(), 0, pszTextW);


    hwndPrev = GetWindow(hwndTarget, GW_HWNDPREV);


    ShowWindowAsync(hwndTarget, SW_HIDE);



    SetWindowPos(hwnd, hwndPrev, 0, 0, 0, 0,
                 SWP_NOMOVE | SWP_NOACTIVATE | SWP_NOOWNERZORDER |
                 SWP_DRAWFRAME);


    MoveWindow(hwnd, rc.left, rc.top,
               rc.right - rc.left, rc.bottom - rc.top, TRUE);


    SetWindowLongPtrW(hwnd, GWL_STYLE, style | WS_VISIBLE);


    InvalidateRect(hwnd, ((void*)0), TRUE);


    SetTimer(hwnd, GHOST_TIMER_ID, GHOST_INTERVAL, ((void*)0));

    return TRUE;
}
