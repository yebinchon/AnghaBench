#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_3__ {int /*<<< orphan*/  idResult; } ;
typedef  int /*<<< orphan*/  INT ;
typedef  scalar_t__ HWND ;
typedef  int DWORD ;
typedef  TYPE_1__ DIALOGINFO ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BM_SETSTYLE ; 
 int /*<<< orphan*/  BS_DEFPUSHBUTTON ; 
 int /*<<< orphan*/  BS_PUSHBUTTON ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int DLGC_BUTTON ; 
 int DLGC_DEFPUSHBUTTON ; 
 int DLGC_UNDEFPUSHBUTTON ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_GETDLGCODE ; 

__attribute__((used)) static BOOL FUNC3( HWND hwndDlg, DIALOGINFO *dlgInfo, WPARAM wParam)
{
    DWORD dlgcode=0; /* initialize just to avoid a warning */
    HWND hwndOld, hwndNew = FUNC1(hwndDlg, wParam);
    INT old_id = dlgInfo->idResult;

    dlgInfo->idResult = wParam;
    if (hwndNew &&
        !((dlgcode=FUNC2(hwndNew, WM_GETDLGCODE, 0, 0 ))
            & (DLGC_UNDEFPUSHBUTTON | DLGC_BUTTON)))
        return FALSE;  /* Destination is not a push button */

    /* Make sure the old default control is a valid push button ID */
    hwndOld = FUNC1( hwndDlg, old_id );
    if (!hwndOld || !(FUNC2( hwndOld, WM_GETDLGCODE, 0, 0) & DLGC_DEFPUSHBUTTON))
        hwndOld = FUNC0( hwndDlg );
    if (hwndOld && hwndOld != hwndNew)
        FUNC2( hwndOld, BM_SETSTYLE, BS_PUSHBUTTON, TRUE );

    if (hwndNew)
    {
        if(dlgcode & DLGC_UNDEFPUSHBUTTON)
            FUNC2( hwndNew, BM_SETSTYLE, BS_DEFPUSHBUTTON, TRUE );
    }
    return TRUE;
}