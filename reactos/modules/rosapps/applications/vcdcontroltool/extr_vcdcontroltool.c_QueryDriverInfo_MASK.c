#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_8__ {int /*<<< orphan*/  lpBinaryPathName; int /*<<< orphan*/  lpDisplayName; } ;
struct TYPE_7__ {scalar_t__ dwCurrentState; } ;
typedef  TYPE_1__ SERVICE_STATUS ;
typedef  int /*<<< orphan*/ * SC_HANDLE ;
typedef  TYPE_2__* LPQUERY_SERVICE_CONFIGW ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  INT_PTR ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 TYPE_2__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  IDC_DRIVERINFO ; 
 int /*<<< orphan*/  IDC_DRIVERINSTALL ; 
 int /*<<< orphan*/  IDC_DRIVERREMOVE ; 
 int MAX_PATH ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  SC_MANAGER_CONNECT ; 
 int SERVICE_QUERY_CONFIG ; 
 int SERVICE_QUERY_STATUS ; 
 scalar_t__ SERVICE_RUNNING ; 
 scalar_t__ SERVICE_START_PENDING ; 
 int /*<<< orphan*/  SW_SHOW ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  WM_SETTEXT ; 
 int /*<<< orphan*/  hDriverWnd ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

INT_PTR
FUNC15(HWND hDlg)
{
    DWORD dwSize;
    SC_HANDLE hMgr, hSvc;
    LPQUERY_SERVICE_CONFIGW pConfig;
    WCHAR szText[2 * MAX_PATH];
    HWND hControl;
    SERVICE_STATUS Status;

    hDriverWnd = hDlg;

    /* Open service manager */
    hMgr = FUNC7(NULL, NULL, SC_MANAGER_CONNECT);
    if (hMgr != NULL)
    {
        /* Open our service */
        hSvc = FUNC8(hMgr, L"Vcdrom", SERVICE_QUERY_CONFIG | SERVICE_QUERY_STATUS);
        if (hSvc != NULL)
        {
            /* Probe its config size */
            if (!FUNC9(hSvc, NULL, 0, &dwSize) &&
                FUNC3() == ERROR_INSUFFICIENT_BUFFER)
            {
                /* And get its config */
                pConfig = FUNC5(FUNC4(), 0, dwSize);

                if (FUNC9(hSvc, pConfig, dwSize, &dwSize))
                {
                    /* Display name & driver */
                    FUNC14(szText, L"%s:\n(%s)", pConfig->lpDisplayName, pConfig->lpBinaryPathName);
                    hControl = FUNC2(hDriverWnd, IDC_DRIVERINFO);
                    FUNC11(hControl, WM_SETTEXT, 0, (LPARAM)szText);
                }

                FUNC6(FUNC4(), 0, pConfig);
            }

            /* Get its status */
            if (FUNC10(hSvc, &Status))
            {
                if (Status.dwCurrentState != SERVICE_RUNNING &&
                    Status.dwCurrentState != SERVICE_START_PENDING)
                {
                    FUNC12(FALSE);
                }
                else
                {
                    FUNC12(TRUE);
                }
            }

            FUNC0(hSvc);
        }

        FUNC0(hMgr);
    }

    /* FIXME: we don't allow uninstall/install */
    {
        hControl = FUNC2(hDriverWnd, IDC_DRIVERINSTALL);
        FUNC1(hControl, FALSE);
        hControl = FUNC2(hDriverWnd, IDC_DRIVERREMOVE);
        FUNC1(hControl, FALSE);
    }

    /* Display our sub window */
    FUNC13(hDlg, SW_SHOW);

    return TRUE;
}