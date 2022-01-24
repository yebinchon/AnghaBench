#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int LONG ;
typedef  int /*<<< orphan*/ * HWND ;

/* Variables and functions */
 int DLGC_DEFPUSHBUTTON ; 
 int /*<<< orphan*/  GWL_EXSTYLE ; 
 int /*<<< orphan*/  GWL_STYLE ; 
 int /*<<< orphan*/  GW_CHILD ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_GETDLGCODE ; 
 int WS_DISABLED ; 
 int WS_EX_CONTROLPARENT ; 
 int WS_VISIBLE ; 

__attribute__((used)) static HWND FUNC3( HWND hwndDlg )
{
    HWND hwndChild, hwndTmp;

    hwndChild = FUNC0( hwndDlg, GW_CHILD );
    while (hwndChild)
    {
        if (FUNC2( hwndChild, WM_GETDLGCODE, 0, 0 ) & DLGC_DEFPUSHBUTTON)
            break;

        /* Recurse into WS_EX_CONTROLPARENT controls */
        if (FUNC1( hwndChild, GWL_EXSTYLE ) & WS_EX_CONTROLPARENT)
        {
            LONG dsStyle = FUNC1( hwndChild, GWL_STYLE );
            if ((dsStyle & WS_VISIBLE) && !(dsStyle & WS_DISABLED) &&
                (hwndTmp = FUNC3(hwndChild)) != NULL)
           return hwndTmp;
        }
        hwndChild = FUNC0( hwndChild, GW_HWNDNEXT );
    }
    return hwndChild;
}