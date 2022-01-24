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
typedef  int /*<<< orphan*/  WPARAM ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INT_PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
#define  IDC_DRIVEROK 130 
#define  IDC_DRIVERSTART 129 
#define  IDC_DRIVERSTOP 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  hDriverWnd ; 

__attribute__((used)) static
INT_PTR
FUNC4(WPARAM wParam,
                    LPARAM lParam)
{
    WORD Msg;

    /* Dispatch the message for the controls we manage */
    Msg = FUNC1(wParam);
    switch (Msg)
    {
        case IDC_DRIVEROK:
            FUNC0(hDriverWnd);
            return TRUE;

        case IDC_DRIVERSTART:
            FUNC2();
            return TRUE;

        case IDC_DRIVERSTOP:
            FUNC3();
            return TRUE;
    }

    return FALSE;
}