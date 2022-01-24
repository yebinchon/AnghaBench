#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ WPARAM ;
typedef  scalar_t__ UINT ;
struct TYPE_3__ {short x; short y; } ;
struct TYPE_4__ {scalar_t__ hwnd; scalar_t__ message; scalar_t__ wParam; scalar_t__ time; TYPE_1__ pt; int /*<<< orphan*/  lParam; } ;
typedef  TYPE_2__ MSG ;
typedef  int /*<<< orphan*/  ME_TextEditor ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SM_CXDOUBLECLK ; 
 int /*<<< orphan*/  SM_CYDOUBLECLK ; 
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
 int FUNC5 (short) ; 

__attribute__((used)) static int FUNC6(ME_TextEditor *editor, UINT msg, WPARAM wParam,
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
        /* Compare the editor instead of the hwnd so that the this
         * can still be done for windowless richedit controls. */
        clickMsg.hwnd = (HWND)editor;
        clickMsg.message = msg;
        clickMsg.wParam = wParam;
        clickMsg.lParam = lParam;
        clickMsg.time = FUNC1();
        clickMsg.pt.x = (short)FUNC4(lParam);
        clickMsg.pt.y = (short)FUNC3(lParam);
        if ((clickNum != 0) &&
            (clickMsg.message == prevClickMsg.message) &&
            (clickMsg.hwnd == prevClickMsg.hwnd) &&
            (clickMsg.wParam == prevClickMsg.wParam) &&
            (clickMsg.time - prevClickMsg.time < FUNC0()) &&
            (FUNC5(clickMsg.pt.x - prevClickMsg.pt.x) < FUNC2(SM_CXDOUBLECLK)/2) &&
            (FUNC5(clickMsg.pt.y - prevClickMsg.pt.y) < FUNC2(SM_CYDOUBLECLK)/2))
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