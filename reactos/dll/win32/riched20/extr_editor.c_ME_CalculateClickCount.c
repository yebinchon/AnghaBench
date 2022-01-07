
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ WPARAM ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {short x; short y; } ;
struct TYPE_4__ {scalar_t__ hwnd; scalar_t__ message; scalar_t__ wParam; scalar_t__ time; TYPE_1__ pt; int lParam; } ;
typedef TYPE_2__ MSG ;
typedef int ME_TextEditor ;
typedef int LPARAM ;
typedef scalar_t__ HWND ;


 scalar_t__ GetDoubleClickTime () ;
 scalar_t__ GetMessageTime () ;
 int GetSystemMetrics (int ) ;
 scalar_t__ HIWORD (int ) ;
 scalar_t__ LOWORD (int ) ;
 int SM_CXDOUBLECLK ;
 int SM_CYDOUBLECLK ;
 scalar_t__ WM_LBUTTONDBLCLK ;
 scalar_t__ WM_LBUTTONDOWN ;
 scalar_t__ WM_MBUTTONDBLCLK ;
 scalar_t__ WM_MBUTTONDOWN ;
 scalar_t__ WM_MOUSEFIRST ;
 scalar_t__ WM_MOUSELAST ;
 scalar_t__ WM_RBUTTONDBLCLK ;
 scalar_t__ WM_RBUTTONDOWN ;
 scalar_t__ WM_XBUTTONDBLCLK ;
 scalar_t__ WM_XBUTTONDOWN ;
 int abs (short) ;

__attribute__((used)) static int ME_CalculateClickCount(ME_TextEditor *editor, UINT msg, WPARAM wParam,
                                  LPARAM lParam)
{
    static int clickNum = 0;
    if (msg < WM_MOUSEFIRST || msg > WM_MOUSELAST)
        return 0;

    if ((msg == WM_LBUTTONDBLCLK) ||
        (msg == WM_RBUTTONDBLCLK) ||
        (msg == WM_MBUTTONDBLCLK) ||
        (msg == WM_XBUTTONDBLCLK))
    {
        msg -= (WM_LBUTTONDBLCLK - WM_LBUTTONDOWN);
    }

    if ((msg == WM_LBUTTONDOWN) ||
        (msg == WM_RBUTTONDOWN) ||
        (msg == WM_MBUTTONDOWN) ||
        (msg == WM_XBUTTONDOWN))
    {
        static MSG prevClickMsg;
        MSG clickMsg;


        clickMsg.hwnd = (HWND)editor;
        clickMsg.message = msg;
        clickMsg.wParam = wParam;
        clickMsg.lParam = lParam;
        clickMsg.time = GetMessageTime();
        clickMsg.pt.x = (short)LOWORD(lParam);
        clickMsg.pt.y = (short)HIWORD(lParam);
        if ((clickNum != 0) &&
            (clickMsg.message == prevClickMsg.message) &&
            (clickMsg.hwnd == prevClickMsg.hwnd) &&
            (clickMsg.wParam == prevClickMsg.wParam) &&
            (clickMsg.time - prevClickMsg.time < GetDoubleClickTime()) &&
            (abs(clickMsg.pt.x - prevClickMsg.pt.x) < GetSystemMetrics(SM_CXDOUBLECLK)/2) &&
            (abs(clickMsg.pt.y - prevClickMsg.pt.y) < GetSystemMetrics(SM_CYDOUBLECLK)/2))
        {
            clickNum++;
        } else {
            clickNum = 1;
        }
        prevClickMsg = clickMsg;
    } else {
        return 0;
    }
    return clickNum;
}
