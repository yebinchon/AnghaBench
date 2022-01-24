#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int state; } ;
typedef  TYPE_1__* PWND ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int DS_CONTROL ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int WNDS_DIALOGWINDOW ; 

__attribute__((used)) static HWND FUNC6( HWND hwndDlg )
{
    while (FUNC2(hwndDlg, GWL_STYLE) & DS_CONTROL)
    {
        PWND pWnd;
        HWND hParent = FUNC1(hwndDlg);
        if (!hParent) break;
// ReactOS
        if (!FUNC3(hParent)) break;

        pWnd = FUNC5(hParent);
        // FIXME: Use pWnd->fnid == FNID_DESKTOP
        if (!pWnd || !FUNC4(pWnd) || hParent == FUNC0()) break;

        if (!(pWnd->state & WNDS_DIALOGWINDOW))
        {
            break;
        }

        hwndDlg = hParent;
    }

    return hwndDlg;
}